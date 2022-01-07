
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mbox_chan {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct bcm2835_mbox {int lock; TYPE_1__ controller; scalar_t__ regs; } ;


 scalar_t__ MAIL1_WRT ;
 struct bcm2835_mbox* bcm2835_link_mbox (struct mbox_chan*) ;
 int dev_dbg (int ,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int bcm2835_send_data(struct mbox_chan *link, void *data)
{
 struct bcm2835_mbox *mbox = bcm2835_link_mbox(link);
 u32 msg = *(u32 *)data;

 spin_lock(&mbox->lock);
 writel(msg, mbox->regs + MAIL1_WRT);
 dev_dbg(mbox->controller.dev, "Request 0x%08X\n", msg);
 spin_unlock(&mbox->lock);
 return 0;
}
