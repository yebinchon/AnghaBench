
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct altera_mbox {int dummy; } ;


 scalar_t__ altera_mbox_full (struct altera_mbox*) ;
 struct altera_mbox* mbox_chan_to_altera_mbox (struct mbox_chan*) ;

__attribute__((used)) static bool altera_mbox_last_tx_done(struct mbox_chan *chan)
{
 struct altera_mbox *mbox = mbox_chan_to_altera_mbox(chan);


 return altera_mbox_full(mbox) ? 0 : 1;
}
