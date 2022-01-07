
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct pasid_state {int lock; TYPE_1__* pri; int pasid; } ;
struct device_state {int pdev; } ;
struct TYPE_2__ {int finish; int status; int inflight; } ;


 int PPR_SUCCESS ;
 int amd_iommu_complete_ppr (int ,int ,int ,size_t) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void finish_pri_tag(struct device_state *dev_state,
      struct pasid_state *pasid_state,
      u16 tag)
{
 unsigned long flags;

 spin_lock_irqsave(&pasid_state->lock, flags);
 if (atomic_dec_and_test(&pasid_state->pri[tag].inflight) &&
     pasid_state->pri[tag].finish) {
  amd_iommu_complete_ppr(dev_state->pdev, pasid_state->pasid,
           pasid_state->pri[tag].status, tag);
  pasid_state->pri[tag].finish = 0;
  pasid_state->pri[tag].status = PPR_SUCCESS;
 }
 spin_unlock_irqrestore(&pasid_state->lock, flags);
}
