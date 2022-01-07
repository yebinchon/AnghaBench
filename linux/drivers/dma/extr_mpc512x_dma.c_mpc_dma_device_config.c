
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_dma_chan {int src_tcd_nunits; int dst_tcd_nunits; int lock; int dwidth; int dst_per_paddr; int swidth; int src_per_paddr; int chan; } ;
struct mpc_dma {int is_mpc8308; } ;
struct dma_slave_config {int src_maxburst; int dst_maxburst; int dst_addr_width; int dst_addr; int src_addr_width; int src_addr; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int IS_ALIGNED (int ,int ) ;
 struct mpc_dma* dma_chan_to_mpc_dma (int *) ;
 struct mpc_dma_chan* dma_chan_to_mpc_dma_chan (struct dma_chan*) ;
 int is_buswidth_valid (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpc_dma_device_config(struct dma_chan *chan,
     struct dma_slave_config *cfg)
{
 struct mpc_dma_chan *mchan = dma_chan_to_mpc_dma_chan(chan);
 struct mpc_dma *mdma = dma_chan_to_mpc_dma(&mchan->chan);
 unsigned long flags;
 if (!IS_ALIGNED(cfg->src_addr, cfg->src_addr_width) ||
     !IS_ALIGNED(cfg->dst_addr, cfg->dst_addr_width)) {
  return -EINVAL;
 }

 if (!is_buswidth_valid(cfg->src_addr_width, mdma->is_mpc8308) ||
     !is_buswidth_valid(cfg->dst_addr_width, mdma->is_mpc8308))
  return -EINVAL;

 spin_lock_irqsave(&mchan->lock, flags);

 mchan->src_per_paddr = cfg->src_addr;
 mchan->src_tcd_nunits = cfg->src_maxburst;
 mchan->swidth = cfg->src_addr_width;
 mchan->dst_per_paddr = cfg->dst_addr;
 mchan->dst_tcd_nunits = cfg->dst_maxburst;
 mchan->dwidth = cfg->dst_addr_width;


 if (mchan->src_tcd_nunits == 0)
  mchan->src_tcd_nunits = 1;
 if (mchan->dst_tcd_nunits == 0)
  mchan->dst_tcd_nunits = 1;

 spin_unlock_irqrestore(&mchan->lock, flags);

 return 0;
}
