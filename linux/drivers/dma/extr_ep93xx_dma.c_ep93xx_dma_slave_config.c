
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_dma_chan {int slave_config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct ep93xx_dma_chan* to_ep93xx_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int ep93xx_dma_slave_config(struct dma_chan *chan,
       struct dma_slave_config *config)
{
 struct ep93xx_dma_chan *edmac = to_ep93xx_dma_chan(chan);

 memcpy(&edmac->slave_config, config, sizeof(*config));

 return 0;
}
