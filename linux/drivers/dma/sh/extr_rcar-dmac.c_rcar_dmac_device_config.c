
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xfer_size; int slave_addr; } ;
struct TYPE_3__ {int xfer_size; int slave_addr; } ;
struct rcar_dmac_chan {TYPE_2__ dst; TYPE_1__ src; } ;
struct dma_slave_config {int dst_addr_width; int src_addr_width; int dst_addr; int src_addr; } ;
struct dma_chan {int dummy; } ;


 struct rcar_dmac_chan* to_rcar_dmac_chan (struct dma_chan*) ;

__attribute__((used)) static int rcar_dmac_device_config(struct dma_chan *chan,
       struct dma_slave_config *cfg)
{
 struct rcar_dmac_chan *rchan = to_rcar_dmac_chan(chan);





 rchan->src.slave_addr = cfg->src_addr;
 rchan->dst.slave_addr = cfg->dst_addr;
 rchan->src.xfer_size = cfg->src_addr_width;
 rchan->dst.xfer_size = cfg->dst_addr_width;

 return 0;
}
