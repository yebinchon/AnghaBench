
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rdma_ch {int lock; int req_lim; int free_tx; } ;
struct srp_iu {int list; } ;
typedef enum srp_iu_type { ____Placeholder_srp_iu_type } srp_iu_type ;


 int SRP_IU_RSP ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void srp_put_tx_iu(struct srp_rdma_ch *ch, struct srp_iu *iu,
     enum srp_iu_type iu_type)
{
 unsigned long flags;

 spin_lock_irqsave(&ch->lock, flags);
 list_add(&iu->list, &ch->free_tx);
 if (iu_type != SRP_IU_RSP)
  ++ch->req_lim;
 spin_unlock_irqrestore(&ch->lock, flags);
}
