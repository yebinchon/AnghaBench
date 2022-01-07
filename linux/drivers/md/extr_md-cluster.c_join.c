
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cluster_name; } ;
struct mddev {struct md_cluster_info* cluster_info; TYPE_1__ bitmap_info; int uuid; } ;
struct md_cluster_info {int slot_number; scalar_t__ lockspace; void* bitmap_lockres; void* resync_lockres; void* no_new_dev_lockres; void* ack_lockres; void* token_lockres; void* message_lockres; int recv_thread; int recovery_thread; int state; int completion; struct mddev* mddev; int recv_mutex; int wait; int suspend_lock; int suspend_list; } ;


 int DLM_LOCK_CR ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_PW ;
 int DLM_LSFL_FS ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int LVB_SIZE ;
 int MD_CLUSTER_BEGIN_JOIN_CLUSTER ;
 int MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ;
 int * ack_bast ;
 int dlm_lock_sync (void*,int ) ;
 int dlm_new_lockspace (char*,int ,int ,int ,int *,struct mddev*,int*,scalar_t__*) ;
 int dlm_release_lockspace (scalar_t__,int) ;
 int dlm_unlock_sync (void*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct md_cluster_info*) ;
 struct md_cluster_info* kzalloc (int,int ) ;
 int lockres_free (void*) ;
 void* lockres_init (struct mddev*,char*,int *,int) ;
 int md_ls_ops ;
 int md_register_thread (int ,struct mddev*,char*) ;
 int md_unregister_thread (int *) ;
 int memset (char*,int ,int) ;
 int mutex_init (int *) ;
 int pr_err (char*,...) ;
 int pr_info (char*,char*,int) ;
 int recv_daemon ;
 int set_bit (int ,int *) ;
 int snprintf (char*,int,char*,int) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int join(struct mddev *mddev, int nodes)
{
 struct md_cluster_info *cinfo;
 int ret, ops_rv;
 char str[64];

 cinfo = kzalloc(sizeof(struct md_cluster_info), GFP_KERNEL);
 if (!cinfo)
  return -ENOMEM;

 INIT_LIST_HEAD(&cinfo->suspend_list);
 spin_lock_init(&cinfo->suspend_lock);
 init_completion(&cinfo->completion);
 set_bit(MD_CLUSTER_BEGIN_JOIN_CLUSTER, &cinfo->state);
 init_waitqueue_head(&cinfo->wait);
 mutex_init(&cinfo->recv_mutex);

 mddev->cluster_info = cinfo;
 cinfo->mddev = mddev;

 memset(str, 0, 64);
 sprintf(str, "%pU", mddev->uuid);
 ret = dlm_new_lockspace(str, mddev->bitmap_info.cluster_name,
    DLM_LSFL_FS, LVB_SIZE,
    &md_ls_ops, mddev, &ops_rv, &cinfo->lockspace);
 if (ret)
  goto err;
 wait_for_completion(&cinfo->completion);
 if (nodes < cinfo->slot_number) {
  pr_err("md-cluster: Slot allotted(%d) is greater than available slots(%d).",
   cinfo->slot_number, nodes);
  ret = -ERANGE;
  goto err;
 }

 ret = -ENOMEM;
 cinfo->recv_thread = md_register_thread(recv_daemon, mddev, "cluster_recv");
 if (!cinfo->recv_thread) {
  pr_err("md-cluster: cannot allocate memory for recv_thread!\n");
  goto err;
 }
 cinfo->message_lockres = lockres_init(mddev, "message", ((void*)0), 1);
 if (!cinfo->message_lockres)
  goto err;
 cinfo->token_lockres = lockres_init(mddev, "token", ((void*)0), 0);
 if (!cinfo->token_lockres)
  goto err;
 cinfo->no_new_dev_lockres = lockres_init(mddev, "no-new-dev", ((void*)0), 0);
 if (!cinfo->no_new_dev_lockres)
  goto err;

 ret = dlm_lock_sync(cinfo->token_lockres, DLM_LOCK_EX);
 if (ret) {
  ret = -EAGAIN;
  pr_err("md-cluster: can't join cluster to avoid lock issue\n");
  goto err;
 }
 cinfo->ack_lockres = lockres_init(mddev, "ack", ack_bast, 0);
 if (!cinfo->ack_lockres) {
  ret = -ENOMEM;
  goto err;
 }

 if (dlm_lock_sync(cinfo->ack_lockres, DLM_LOCK_CR))
  pr_err("md-cluster: failed to get a sync CR lock on ACK!(%d)\n",
    ret);
 dlm_unlock_sync(cinfo->token_lockres);

 if (dlm_lock_sync(cinfo->no_new_dev_lockres, DLM_LOCK_CR))
  pr_err("md-cluster: failed to get a sync CR lock on no-new-dev!(%d)\n", ret);


 pr_info("md-cluster: Joined cluster %s slot %d\n", str, cinfo->slot_number);
 snprintf(str, 64, "bitmap%04d", cinfo->slot_number - 1);
 cinfo->bitmap_lockres = lockres_init(mddev, str, ((void*)0), 1);
 if (!cinfo->bitmap_lockres) {
  ret = -ENOMEM;
  goto err;
 }
 if (dlm_lock_sync(cinfo->bitmap_lockres, DLM_LOCK_PW)) {
  pr_err("Failed to get bitmap lock\n");
  ret = -EINVAL;
  goto err;
 }

 cinfo->resync_lockres = lockres_init(mddev, "resync", ((void*)0), 0);
 if (!cinfo->resync_lockres) {
  ret = -ENOMEM;
  goto err;
 }

 return 0;
err:
 set_bit(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
 md_unregister_thread(&cinfo->recovery_thread);
 md_unregister_thread(&cinfo->recv_thread);
 lockres_free(cinfo->message_lockres);
 lockres_free(cinfo->token_lockres);
 lockres_free(cinfo->ack_lockres);
 lockres_free(cinfo->no_new_dev_lockres);
 lockres_free(cinfo->resync_lockres);
 lockres_free(cinfo->bitmap_lockres);
 if (cinfo->lockspace)
  dlm_release_lockspace(cinfo->lockspace, 2);
 mddev->cluster_info = ((void*)0);
 kfree(cinfo);
 return ret;
}
