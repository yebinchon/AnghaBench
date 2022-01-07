
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_edma_chan {int configured; int config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 struct dw_edma_chan* dchan2dw_edma_chan (struct dma_chan*) ;
 int memcpy (int *,struct dma_slave_config*,int) ;

__attribute__((used)) static int dw_edma_device_config(struct dma_chan *dchan,
     struct dma_slave_config *config)
{
 struct dw_edma_chan *chan = dchan2dw_edma_chan(dchan);

 memcpy(&chan->config, config, sizeof(*config));
 chan->configured = 1;

 return 0;
}
