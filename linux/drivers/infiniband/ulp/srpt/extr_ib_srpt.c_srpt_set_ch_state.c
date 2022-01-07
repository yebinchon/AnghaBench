
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_rdma_ch {int state; int spinlock; } ;
typedef enum rdma_ch_state { ____Placeholder_rdma_ch_state } rdma_ch_state ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool srpt_set_ch_state(struct srpt_rdma_ch *ch, enum rdma_ch_state new)
{
 unsigned long flags;
 enum rdma_ch_state prev;
 bool changed = 0;

 spin_lock_irqsave(&ch->spinlock, flags);
 prev = ch->state;
 if (new > prev) {
  ch->state = new;
  changed = 1;
 }
 spin_unlock_irqrestore(&ch->spinlock, flags);

 return changed;
}
