
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_chan {int cfg; } ;
struct dma_slave_config {scalar_t__ src_addr_width; scalar_t__ dst_addr_width; scalar_t__ src_maxburst; scalar_t__ dst_maxburst; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ max_burst; } ;


 scalar_t__ DMA_SLAVE_BUSWIDTH_8_BYTES ;
 int EINVAL ;
 int memcpy (int *,struct dma_slave_config*,int) ;
 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;

__attribute__((used)) static int omap_dma_slave_config(struct dma_chan *chan, struct dma_slave_config *cfg)
{
 struct omap_chan *c = to_omap_dma_chan(chan);

 if (cfg->src_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES ||
     cfg->dst_addr_width == DMA_SLAVE_BUSWIDTH_8_BYTES)
  return -EINVAL;

 if (cfg->src_maxburst > chan->device->max_burst ||
     cfg->dst_maxburst > chan->device->max_burst)
  return -EINVAL;

 memcpy(&c->cfg, cfg, sizeof(c->cfg));

 return 0;
}
