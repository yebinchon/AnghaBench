
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_dma_vchan {int cfg; } ;
struct dma_slave_config {scalar_t__ src_addr_width; scalar_t__ dst_addr_width; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ DMA_SLAVE_BUSWIDTH_8_BYTES ;
 int EINVAL ;
 int memcpy (int *,struct dma_slave_config*,int) ;
 struct owl_dma_vchan* to_owl_vchan (struct dma_chan*) ;

__attribute__((used)) static int owl_dma_config(struct dma_chan *chan,
     struct dma_slave_config *config)
{
 struct owl_dma_vchan *vchan = to_owl_vchan(chan);


 if (config->src_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES ||
     config->dst_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES)
  return -EINVAL;

 memcpy(&vchan->cfg, config, sizeof(struct dma_slave_config));

 return 0;
}
