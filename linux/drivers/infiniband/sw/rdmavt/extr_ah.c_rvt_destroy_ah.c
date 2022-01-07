
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvt_dev_info {int n_ahs_lock; int n_ahs_allocated; } ;
struct rvt_ah {int attr; } ;
struct ib_ah {int device; } ;


 struct rvt_dev_info* ib_to_rvt (int ) ;
 struct rvt_ah* ibah_to_rvtah (struct ib_ah*) ;
 int rdma_destroy_ah_attr (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rvt_destroy_ah(struct ib_ah *ibah, u32 destroy_flags)
{
 struct rvt_dev_info *dev = ib_to_rvt(ibah->device);
 struct rvt_ah *ah = ibah_to_rvtah(ibah);
 unsigned long flags;

 spin_lock_irqsave(&dev->n_ahs_lock, flags);
 dev->n_ahs_allocated--;
 spin_unlock_irqrestore(&dev->n_ahs_lock, flags);

 rdma_destroy_ah_attr(&ah->attr);
}
