
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bchannels; } ;
struct dchannel {int maxlen; int workq; TYPE_1__ dev; int rqueue; int squeue; void* phfunc; scalar_t__ tx_idx; int * tx_skb; int * rx_skb; int * hw; int Flags; } ;


 int FLG_HDLC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int dchannel_bh ;
 int skb_queue_head_init (int *) ;
 int test_and_set_bit (int ,int *) ;

int
mISDN_initdchannel(struct dchannel *ch, int maxlen, void *phf)
{
 test_and_set_bit(FLG_HDLC, &ch->Flags);
 ch->maxlen = maxlen;
 ch->hw = ((void*)0);
 ch->rx_skb = ((void*)0);
 ch->tx_skb = ((void*)0);
 ch->tx_idx = 0;
 ch->phfunc = phf;
 skb_queue_head_init(&ch->squeue);
 skb_queue_head_init(&ch->rqueue);
 INIT_LIST_HEAD(&ch->dev.bchannels);
 INIT_WORK(&ch->workq, dchannel_bh);
 return 0;
}
