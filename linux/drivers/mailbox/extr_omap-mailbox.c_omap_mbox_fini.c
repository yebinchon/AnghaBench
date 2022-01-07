
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_mbox {TYPE_1__* rxq; int irq; } ;
struct TYPE_2__ {int work; } ;


 int IRQ_RX ;
 int _omap_mbox_disable_irq (struct omap_mbox*,int ) ;
 int flush_work (int *) ;
 int free_irq (int ,struct omap_mbox*) ;
 int mbox_queue_free (TYPE_1__*) ;

__attribute__((used)) static void omap_mbox_fini(struct omap_mbox *mbox)
{
 _omap_mbox_disable_irq(mbox, IRQ_RX);
 free_irq(mbox->irq, mbox);
 flush_work(&mbox->rxq->work);
 mbox_queue_free(mbox->rxq);
}
