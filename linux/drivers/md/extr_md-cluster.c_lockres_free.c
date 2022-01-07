
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dlm_lock_resource* sb_lvbptr; int sb_lkid; } ;
struct dlm_lock_resource {TYPE_1__ lksb; struct dlm_lock_resource* name; int sync_locking_done; int sync_locking; int ls; } ;


 int DLM_LKF_FORCEUNLOCK ;
 int dlm_unlock (int ,int ,int ,TYPE_1__*,struct dlm_lock_resource*) ;
 int kfree (struct dlm_lock_resource*) ;
 int pr_err (char*,struct dlm_lock_resource*,int) ;
 scalar_t__ unlikely (int) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void lockres_free(struct dlm_lock_resource *res)
{
 int ret = 0;

 if (!res)
  return;





 ret = dlm_unlock(res->ls, res->lksb.sb_lkid, DLM_LKF_FORCEUNLOCK,
  &res->lksb, res);
 if (unlikely(ret != 0))
  pr_err("failed to unlock %s return %d\n", res->name, ret);
 else
  wait_event(res->sync_locking, res->sync_locking_done);

 kfree(res->name);
 kfree(res->lksb.sb_lvbptr);
 kfree(res);
}
