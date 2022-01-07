
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct md_thread {TYPE_2__* mddev; } ;
struct md_cluster_info {int recv_mutex; struct dlm_lock_resource* message_lockres; struct dlm_lock_resource* ack_lockres; } ;
struct TYPE_3__ {int sb_lvbptr; } ;
struct dlm_lock_resource {TYPE_1__ lksb; } ;
struct cluster_msg {int dummy; } ;
struct TYPE_4__ {struct md_cluster_info* cluster_info; } ;


 int DLM_LOCK_CR ;
 int DLM_LOCK_PR ;
 int dlm_lock_sync (struct dlm_lock_resource*,int ) ;
 int dlm_unlock_sync (struct dlm_lock_resource*) ;
 int memcpy (struct cluster_msg*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int pr_info (char*,int) ;
 int process_recvd_msg (TYPE_2__*,struct cluster_msg*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void recv_daemon(struct md_thread *thread)
{
 struct md_cluster_info *cinfo = thread->mddev->cluster_info;
 struct dlm_lock_resource *ack_lockres = cinfo->ack_lockres;
 struct dlm_lock_resource *message_lockres = cinfo->message_lockres;
 struct cluster_msg msg;
 int ret;

 mutex_lock(&cinfo->recv_mutex);

 if (dlm_lock_sync(message_lockres, DLM_LOCK_CR)) {
  pr_err("md/raid1:failed to get CR on MESSAGE\n");
  mutex_unlock(&cinfo->recv_mutex);
  return;
 }


 memcpy(&msg, message_lockres->lksb.sb_lvbptr, sizeof(struct cluster_msg));
 ret = process_recvd_msg(thread->mddev, &msg);
 if (ret)
  goto out;


 ret = dlm_unlock_sync(ack_lockres);
 if (unlikely(ret != 0))
  pr_info("unlock ack failed return %d\n", ret);

 ret = dlm_lock_sync(message_lockres, DLM_LOCK_PR);
 if (unlikely(ret != 0))
  pr_info("lock PR on msg failed return %d\n", ret);

 ret = dlm_lock_sync(ack_lockres, DLM_LOCK_CR);
 if (unlikely(ret != 0))
  pr_info("lock CR on ack failed return %d\n", ret);
out:

 ret = dlm_unlock_sync(message_lockres);
 if (unlikely(ret != 0))
  pr_info("unlock msg failed return %d\n", ret);
 mutex_unlock(&cinfo->recv_mutex);
}
