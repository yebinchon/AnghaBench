
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mddev {int flags; } ;
struct TYPE_3__ {scalar_t__ sb_status; int sb_lkid; } ;
struct dlm_lock_resource {int sync_locking_done; int mode; TYPE_1__ lksb; int name; int ls; int sync_locking; int bast; int flags; } ;


 int DLM_LKF_CANCEL ;
 int EPERM ;
 int MD_CLOSING ;
 int dlm_lock (int ,int,TYPE_1__*,int ,int ,int ,int ,int ,struct dlm_lock_resource*,int ) ;
 int dlm_unlock (int ,int ,int ,TYPE_1__*,struct dlm_lock_resource*) ;
 scalar_t__ kthread_should_stop () ;
 int pr_info (char*,int ,int) ;
 int strlen (int ) ;
 int sync_ast ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int dlm_lock_sync_interruptible(struct dlm_lock_resource *res, int mode,
           struct mddev *mddev)
{
 int ret = 0;

 ret = dlm_lock(res->ls, mode, &res->lksb,
   res->flags, res->name, strlen(res->name),
   0, sync_ast, res, res->bast);
 if (ret)
  return ret;

 wait_event(res->sync_locking, res->sync_locking_done
          || kthread_should_stop()
          || test_bit(MD_CLOSING, &mddev->flags));
 if (!res->sync_locking_done) {





  ret = dlm_unlock(res->ls, res->lksb.sb_lkid, DLM_LKF_CANCEL,
   &res->lksb, res);
  res->sync_locking_done = 0;
  if (unlikely(ret != 0))
   pr_info("failed to cancel previous lock request "
     "%s return %d\n", res->name, ret);
  return -EPERM;
 } else
  res->sync_locking_done = 0;
 if (res->lksb.sb_status == 0)
  res->mode = mode;
 return res->lksb.sb_status;
}
