
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kfd_dbgmgr {scalar_t__ pasid; TYPE_2__* dbgdev; } ;
struct dbg_address_watch_info {TYPE_1__* process; } ;
struct TYPE_4__ {scalar_t__ (* dbgdev_address_watch ) (TYPE_2__*,struct dbg_address_watch_info*) ;} ;
struct TYPE_3__ {scalar_t__ pasid; } ;


 long EINVAL ;
 int pr_debug (char*,scalar_t__) ;
 scalar_t__ stub1 (TYPE_2__*,struct dbg_address_watch_info*) ;

long kfd_dbgmgr_address_watch(struct kfd_dbgmgr *pmgr,
    struct dbg_address_watch_info *adw_info)
{

 if (pmgr->pasid != adw_info->process->pasid) {
  pr_debug("H/W debugger support was not registered for requester pasid %d\n",
    adw_info->process->pasid);
  return -EINVAL;
 }

 return (long) pmgr->dbgdev->dbgdev_address_watch(pmgr->dbgdev,
       adw_info);
}
