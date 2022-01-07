
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;
struct bcm2835_chan {struct dma_slave_config cfg; } ;


 struct bcm2835_chan* to_bcm2835_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int bcm2835_dma_slave_config(struct dma_chan *chan,
        struct dma_slave_config *cfg)
{
 struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);

 c->cfg = *cfg;

 return 0;
}
