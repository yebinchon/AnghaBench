
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int lockspace; } ;
struct TYPE_2__ {struct dlm_lock_resource* sb_lvbptr; } ;
struct dlm_lock_resource {int sync_locking_done; void (* bast ) (void*,int) ;struct dlm_lock_resource* name; TYPE_1__ lksb; int flags; int mode; struct mddev* mddev; int ls; int sync_locking; } ;


 int DLM_LKF_CONVERT ;
 int DLM_LKF_EXPEDITE ;
 int DLM_LKF_VALBLK ;
 int DLM_LOCK_IV ;
 int DLM_LOCK_NL ;
 int GFP_KERNEL ;
 int LVB_SIZE ;
 int dlm_lock_sync (struct dlm_lock_resource*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct dlm_lock_resource*) ;
 void* kzalloc (int,int ) ;
 int pr_err (char*,char*) ;
 int strlcpy (struct dlm_lock_resource*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static struct dlm_lock_resource *lockres_init(struct mddev *mddev,
  char *name, void (*bastfn)(void *arg, int mode), int with_lvb)
{
 struct dlm_lock_resource *res = ((void*)0);
 int ret, namelen;
 struct md_cluster_info *cinfo = mddev->cluster_info;

 res = kzalloc(sizeof(struct dlm_lock_resource), GFP_KERNEL);
 if (!res)
  return ((void*)0);
 init_waitqueue_head(&res->sync_locking);
 res->sync_locking_done = 0;
 res->ls = cinfo->lockspace;
 res->mddev = mddev;
 res->mode = DLM_LOCK_IV;
 namelen = strlen(name);
 res->name = kzalloc(namelen + 1, GFP_KERNEL);
 if (!res->name) {
  pr_err("md-cluster: Unable to allocate resource name for resource %s\n", name);
  goto out_err;
 }
 strlcpy(res->name, name, namelen + 1);
 if (with_lvb) {
  res->lksb.sb_lvbptr = kzalloc(LVB_SIZE, GFP_KERNEL);
  if (!res->lksb.sb_lvbptr) {
   pr_err("md-cluster: Unable to allocate LVB for resource %s\n", name);
   goto out_err;
  }
  res->flags = DLM_LKF_VALBLK;
 }

 if (bastfn)
  res->bast = bastfn;

 res->flags |= DLM_LKF_EXPEDITE;

 ret = dlm_lock_sync(res, DLM_LOCK_NL);
 if (ret) {
  pr_err("md-cluster: Unable to lock NL on new lock resource %s\n", name);
  goto out_err;
 }
 res->flags &= ~DLM_LKF_EXPEDITE;
 res->flags |= DLM_LKF_CONVERT;

 return res;
out_err:
 kfree(res->lksb.sb_lvbptr);
 kfree(res->name);
 kfree(res);
 return ((void*)0);
}
