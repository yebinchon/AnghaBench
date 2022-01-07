
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbox_chan {int txdone_method; TYPE_1__* mbox; } ;
struct TYPE_2__ {int dev; } ;


 int TXDONE_BY_ACK ;
 int dev_err (int ,char*) ;
 int tx_tick (struct mbox_chan*,int) ;
 scalar_t__ unlikely (int) ;

void mbox_client_txdone(struct mbox_chan *chan, int r)
{
 if (unlikely(!(chan->txdone_method & TXDONE_BY_ACK))) {
  dev_err(chan->mbox->dev, "Client can't run the TX ticker\n");
  return;
 }

 tx_tick(chan, r);
}
