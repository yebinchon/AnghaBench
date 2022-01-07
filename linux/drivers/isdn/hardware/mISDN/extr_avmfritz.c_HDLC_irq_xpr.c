
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bchannel {scalar_t__ tx_idx; int Flags; TYPE_1__* tx_skb; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int FLG_TX_EMPTY ;
 int dev_kfree_skb (TYPE_1__*) ;
 scalar_t__ get_next_bframe (struct bchannel*) ;
 int hdlc_fill_fifo (struct bchannel*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
HDLC_irq_xpr(struct bchannel *bch)
{
 if (bch->tx_skb && bch->tx_idx < bch->tx_skb->len) {
  hdlc_fill_fifo(bch);
 } else {
  dev_kfree_skb(bch->tx_skb);
  if (get_next_bframe(bch)) {
   hdlc_fill_fifo(bch);
   test_and_clear_bit(FLG_TX_EMPTY, &bch->Flags);
  } else if (test_bit(FLG_TX_EMPTY, &bch->Flags)) {
   hdlc_fill_fifo(bch);
  }
 }
}
