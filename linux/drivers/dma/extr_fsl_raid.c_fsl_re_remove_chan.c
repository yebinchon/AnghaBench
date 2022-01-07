
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_re_chan {int oub_phys_addr; int oub_ring_virt_addr; TYPE_1__* re_dev; int inb_phys_addr; int inb_ring_virt_addr; int irqtask; } ;
struct TYPE_2__ {int hw_desc_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void fsl_re_remove_chan(struct fsl_re_chan *chan)
{
 tasklet_kill(&chan->irqtask);

 dma_pool_free(chan->re_dev->hw_desc_pool, chan->inb_ring_virt_addr,
        chan->inb_phys_addr);

 dma_pool_free(chan->re_dev->hw_desc_pool, chan->oub_ring_virt_addr,
        chan->oub_phys_addr);
}
