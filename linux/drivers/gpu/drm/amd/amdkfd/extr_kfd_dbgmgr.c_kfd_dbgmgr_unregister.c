
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process {scalar_t__ pasid; } ;
struct kfd_dbgmgr {scalar_t__ pasid; TYPE_1__* dbgdev; } ;
struct TYPE_2__ {int (* dbgdev_unregister ) (TYPE_1__*) ;} ;


 long EINVAL ;
 int pr_debug (char*,scalar_t__) ;
 int stub1 (TYPE_1__*) ;

long kfd_dbgmgr_unregister(struct kfd_dbgmgr *pmgr, struct kfd_process *p)
{

 if (pmgr->pasid != p->pasid) {
  pr_debug("H/W debugger is not registered by calling pasid %d\n",
    p->pasid);
  return -EINVAL;
 }

 pmgr->dbgdev->dbgdev_unregister(pmgr->dbgdev);

 pmgr->pasid = 0;

 return 0;
}
