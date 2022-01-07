
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct bcm2835_mbox {int lock; scalar_t__ regs; } ;


 int ARM_MS_FULL ;
 scalar_t__ MAIL1_STA ;
 struct bcm2835_mbox* bcm2835_link_mbox (struct mbox_chan*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool bcm2835_last_tx_done(struct mbox_chan *link)
{
 struct bcm2835_mbox *mbox = bcm2835_link_mbox(link);
 bool ret;

 spin_lock(&mbox->lock);
 ret = !(readl(mbox->regs + MAIL1_STA) & ARM_MS_FULL);
 spin_unlock(&mbox->lock);
 return ret;
}
