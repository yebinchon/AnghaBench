
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_dmac_chan {int irq; } ;
struct dma_chan {int dummy; } ;


 int synchronize_irq (int ) ;
 struct rcar_dmac_chan* to_rcar_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static void rcar_dmac_device_synchronize(struct dma_chan *chan)
{
 struct rcar_dmac_chan *rchan = to_rcar_dmac_chan(chan);

 synchronize_irq(rchan->irq);
}
