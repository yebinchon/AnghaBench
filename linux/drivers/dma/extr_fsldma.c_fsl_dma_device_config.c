
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsldma_chan {int (* set_request_count ) (struct fsldma_chan*,int) ;} ;
struct dma_slave_config {scalar_t__ direction; int dst_addr_width; int dst_maxburst; int src_addr_width; int src_maxburst; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ DMA_MEM_TO_DEV ;
 int EINVAL ;
 int ENXIO ;
 int stub1 (struct fsldma_chan*,int) ;
 struct fsldma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static int fsl_dma_device_config(struct dma_chan *dchan,
     struct dma_slave_config *config)
{
 struct fsldma_chan *chan;
 int size;

 if (!dchan)
  return -EINVAL;

 chan = to_fsl_chan(dchan);


 if (!chan->set_request_count)
  return -ENXIO;


 if (config->direction == DMA_MEM_TO_DEV)
  size = config->dst_addr_width * config->dst_maxburst;
 else
  size = config->src_addr_width * config->src_maxburst;

 chan->set_request_count(chan, size);
 return 0;
}
