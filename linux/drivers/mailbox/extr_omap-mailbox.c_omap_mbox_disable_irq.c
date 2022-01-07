
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;
struct mbox_chan {int dummy; } ;
typedef int omap_mbox_irq_t ;


 scalar_t__ WARN_ON (int) ;
 int _omap_mbox_disable_irq (struct omap_mbox*,int ) ;
 struct omap_mbox* mbox_chan_to_omap_mbox (struct mbox_chan*) ;

void omap_mbox_disable_irq(struct mbox_chan *chan, omap_mbox_irq_t irq)
{
 struct omap_mbox *mbox = mbox_chan_to_omap_mbox(chan);

 if (WARN_ON(!mbox))
  return;

 _omap_mbox_disable_irq(mbox, irq);
}
