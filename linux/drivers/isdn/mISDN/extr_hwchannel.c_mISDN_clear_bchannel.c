
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bchannel {scalar_t__ rcount; int rqueue; int init_maxlen; int next_maxlen; int maxlen; int init_minlen; int next_minlen; int minlen; scalar_t__ dropcnt; int Flags; int * next_skb; int * rx_skb; scalar_t__ tx_idx; int * tx_skb; } ;


 int FLG_ACTIVE ;
 int FLG_FILLEMPTY ;
 int FLG_RX_OFF ;
 int FLG_TX_BUSY ;
 int FLG_TX_EMPTY ;
 int FLG_TX_NEXT ;
 int dev_kfree_skb (int *) ;
 int skb_queue_purge (int *) ;
 int test_and_clear_bit (int ,int *) ;

void
mISDN_clear_bchannel(struct bchannel *ch)
{
 if (ch->tx_skb) {
  dev_kfree_skb(ch->tx_skb);
  ch->tx_skb = ((void*)0);
 }
 ch->tx_idx = 0;
 if (ch->rx_skb) {
  dev_kfree_skb(ch->rx_skb);
  ch->rx_skb = ((void*)0);
 }
 if (ch->next_skb) {
  dev_kfree_skb(ch->next_skb);
  ch->next_skb = ((void*)0);
 }
 test_and_clear_bit(FLG_TX_BUSY, &ch->Flags);
 test_and_clear_bit(FLG_TX_NEXT, &ch->Flags);
 test_and_clear_bit(FLG_ACTIVE, &ch->Flags);
 test_and_clear_bit(FLG_FILLEMPTY, &ch->Flags);
 test_and_clear_bit(FLG_TX_EMPTY, &ch->Flags);
 test_and_clear_bit(FLG_RX_OFF, &ch->Flags);
 ch->dropcnt = 0;
 ch->minlen = ch->init_minlen;
 ch->next_minlen = ch->init_minlen;
 ch->maxlen = ch->init_maxlen;
 ch->next_maxlen = ch->init_maxlen;
 skb_queue_purge(&ch->rqueue);
 ch->rcount = 0;
}
