
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int vmid; } ;
struct kfd_process_device {TYPE_1__* process; TYPE_3__ qpd; struct kfd_dev* dev; } ;
struct kfd_dev {int kgd; TYPE_2__* dqm; struct kfd2kgd_calls* kfd2kgd; } ;
struct kfd2kgd_calls {int (* invalidate_tlbs ) (int ,int ) ;int (* invalidate_tlbs_vmid ) (int ,int ) ;} ;
struct TYPE_5__ {scalar_t__ sched_policy; } ;
struct TYPE_4__ {int pasid; } ;


 scalar_t__ KFD_SCHED_POLICY_NO_HWS ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

void kfd_flush_tlb(struct kfd_process_device *pdd)
{
 struct kfd_dev *dev = pdd->dev;
 const struct kfd2kgd_calls *f2g = dev->kfd2kgd;

 if (dev->dqm->sched_policy == KFD_SCHED_POLICY_NO_HWS) {



  if (pdd->qpd.vmid)
   f2g->invalidate_tlbs_vmid(dev->kgd, pdd->qpd.vmid);
 } else {
  f2g->invalidate_tlbs(dev->kgd, pdd->process->pasid);
 }
}
