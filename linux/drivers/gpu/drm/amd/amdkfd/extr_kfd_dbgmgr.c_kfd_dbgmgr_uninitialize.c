
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dbgmgr {int * dev; scalar_t__ pasid; int * dbgdev; } ;


 int kfree (int *) ;

__attribute__((used)) static void kfd_dbgmgr_uninitialize(struct kfd_dbgmgr *pmgr)
{
 kfree(pmgr->dbgdev);

 pmgr->dbgdev = ((void*)0);
 pmgr->pasid = 0;
 pmgr->dev = ((void*)0);
}
