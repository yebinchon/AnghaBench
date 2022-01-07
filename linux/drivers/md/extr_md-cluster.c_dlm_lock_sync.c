
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sb_status; } ;
struct dlm_lock_resource {int sync_locking_done; int mode; TYPE_1__ lksb; int sync_locking; int bast; int name; int flags; int ls; } ;


 int dlm_lock (int ,int,TYPE_1__*,int ,int ,int ,int ,int ,struct dlm_lock_resource*,int ) ;
 int strlen (int ) ;
 int sync_ast ;
 int wait_event (int ,int) ;

__attribute__((used)) static int dlm_lock_sync(struct dlm_lock_resource *res, int mode)
{
 int ret = 0;

 ret = dlm_lock(res->ls, mode, &res->lksb,
   res->flags, res->name, strlen(res->name),
   0, sync_ast, res, res->bast);
 if (ret)
  return ret;
 wait_event(res->sync_locking, res->sync_locking_done);
 res->sync_locking_done = 0;
 if (res->lksb.sb_status == 0)
  res->mode = mode;
 return res->lksb.sb_status;
}
