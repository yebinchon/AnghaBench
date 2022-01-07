
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_dma_chan {int config; } ;
struct dma_slave_config {scalar_t__ src_addr_width; scalar_t__ dst_addr_width; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ DMA_SLAVE_BUSWIDTH_8_BYTES ;
 int EINVAL ;
 int memcpy (int *,struct dma_slave_config*,int) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int jz4780_dma_config(struct dma_chan *chan,
 struct dma_slave_config *config)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);

 if ((config->src_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES)
    || (config->dst_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES))
  return -EINVAL;


 memcpy(&jzchan->config, config, sizeof(jzchan->config));

 return 0;
}
