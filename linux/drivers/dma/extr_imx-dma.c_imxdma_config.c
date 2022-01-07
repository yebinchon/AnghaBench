
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imxdma_channel {int config; } ;
struct dma_slave_config {int dummy; } ;
struct dma_chan {int dummy; } ;


 int memcpy (int *,struct dma_slave_config*,int) ;
 struct imxdma_channel* to_imxdma_chan (struct dma_chan*) ;

__attribute__((used)) static int imxdma_config(struct dma_chan *chan,
    struct dma_slave_config *dmaengine_cfg)
{
 struct imxdma_channel *imxdmac = to_imxdma_chan(chan);

 memcpy(&imxdmac->config, dmaengine_cfg, sizeof(*dmaengine_cfg));

 return 0;
}
