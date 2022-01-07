
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_chan {int dummy; } ;
struct bcm2835_mbox {scalar_t__ regs; } ;


 scalar_t__ MAIL0_CNF ;
 struct bcm2835_mbox* bcm2835_link_mbox (struct mbox_chan*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void bcm2835_shutdown(struct mbox_chan *link)
{
 struct bcm2835_mbox *mbox = bcm2835_link_mbox(link);

 writel(0, mbox->regs + MAIL0_CNF);
}
