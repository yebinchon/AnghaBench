
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_slave_config {int dummy; } ;
struct dma_pl330_chan {int slave_config; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct dma_pl330_chan* to_pchan (struct dma_chan*) ;

__attribute__((used)) static int pl330_config(struct dma_chan *chan,
   struct dma_slave_config *slave_config)
{
 struct dma_pl330_chan *pch = to_pchan(chan);

 memcpy(&pch->slave_config, slave_config, sizeof(*slave_config));

 return 0;
}
