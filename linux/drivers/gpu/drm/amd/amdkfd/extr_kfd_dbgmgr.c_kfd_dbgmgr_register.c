
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process {scalar_t__ pasid; int pqm; } ;
struct kfd_dbgmgr {scalar_t__ pasid; TYPE_1__* dbgdev; } ;
struct TYPE_2__ {int (* dbgdev_register ) (TYPE_1__*) ;int * pqm; } ;


 long EBUSY ;
 int pr_debug (char*,scalar_t__) ;
 int stub1 (TYPE_1__*) ;

long kfd_dbgmgr_register(struct kfd_dbgmgr *pmgr, struct kfd_process *p)
{
 if (pmgr->pasid != 0) {
  pr_debug("H/W debugger is already active using pasid %d\n",
    pmgr->pasid);
  return -EBUSY;
 }


 pmgr->pasid = p->pasid;


 pmgr->dbgdev->pqm = &p->pqm;


 pmgr->dbgdev->dbgdev_register(pmgr->dbgdev);

 return 0;
}
