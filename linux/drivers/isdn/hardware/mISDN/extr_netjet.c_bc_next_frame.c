
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tx_idx; int Flags; TYPE_2__* tx_skb; } ;
struct tiger_ch {TYPE_1__ bch; } ;
struct TYPE_4__ {scalar_t__ len; } ;


 int FLG_FILLEMPTY ;
 int FLG_TX_EMPTY ;
 int dev_kfree_skb (TYPE_2__*) ;
 int fill_dma (struct tiger_ch*) ;
 scalar_t__ get_next_bframe (TYPE_1__*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
bc_next_frame(struct tiger_ch *bc)
{
 int ret = 1;

 if (bc->bch.tx_skb && bc->bch.tx_idx < bc->bch.tx_skb->len) {
  fill_dma(bc);
 } else {
  dev_kfree_skb(bc->bch.tx_skb);
  if (get_next_bframe(&bc->bch)) {
   fill_dma(bc);
   test_and_clear_bit(FLG_TX_EMPTY, &bc->bch.Flags);
  } else if (test_bit(FLG_TX_EMPTY, &bc->bch.Flags)) {
   fill_dma(bc);
  } else if (test_bit(FLG_FILLEMPTY, &bc->bch.Flags)) {
   test_and_set_bit(FLG_TX_EMPTY, &bc->bch.Flags);
   ret = 0;
  } else {
   ret = 0;
  }
 }
 return ret;
}
