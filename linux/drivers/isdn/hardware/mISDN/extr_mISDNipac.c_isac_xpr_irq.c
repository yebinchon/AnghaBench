
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tx_idx; TYPE_2__* tx_skb; int timer; int Flags; } ;
struct isac_hw {TYPE_1__ dch; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int FLG_BUSY_TIMER ;
 int del_timer (int *) ;
 int dev_kfree_skb (TYPE_2__*) ;
 scalar_t__ get_next_dframe (TYPE_1__*) ;
 int isac_fill_fifo (struct isac_hw*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
isac_xpr_irq(struct isac_hw *isac)
{
 if (test_and_clear_bit(FLG_BUSY_TIMER, &isac->dch.Flags))
  del_timer(&isac->dch.timer);
 if (isac->dch.tx_skb && isac->dch.tx_idx < isac->dch.tx_skb->len) {
  isac_fill_fifo(isac);
 } else {
  dev_kfree_skb(isac->dch.tx_skb);
  if (get_next_dframe(&isac->dch))
   isac_fill_fifo(isac);
 }
}
