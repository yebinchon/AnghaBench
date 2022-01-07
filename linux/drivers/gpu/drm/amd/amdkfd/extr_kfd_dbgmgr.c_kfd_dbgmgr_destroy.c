
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dbgmgr {int dummy; } ;


 int kfd_dbgmgr_uninitialize (struct kfd_dbgmgr*) ;
 int kfree (struct kfd_dbgmgr*) ;

void kfd_dbgmgr_destroy(struct kfd_dbgmgr *pmgr)
{
 if (pmgr) {
  kfd_dbgmgr_uninitialize(pmgr);
  kfree(pmgr);
 }
}
