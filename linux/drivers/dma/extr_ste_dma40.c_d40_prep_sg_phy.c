
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stedma40_half_channel_info {int dummy; } ;
struct stedma40_chan_cfg {struct stedma40_half_channel_info dst_info; struct stedma40_half_channel_info src_info; } ;
struct scatterlist {int dummy; } ;
struct TYPE_6__ {int size; int dma_addr; } ;
struct TYPE_4__ {int dst; int src; } ;
struct d40_desc {TYPE_3__ lli_pool; TYPE_1__ lli_phy; scalar_t__ cyclic; } ;
struct d40_chan {TYPE_2__* base; int dst_def_cfg; int src_def_cfg; struct stedma40_chan_cfg dma_cfg; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {int dev; } ;


 int DMA_TO_DEVICE ;
 unsigned long LLI_CYCLIC ;
 unsigned long LLI_TERM_INT ;
 int d40_phy_sg_to_lli (struct scatterlist*,unsigned int,int ,int ,int ,int ,struct stedma40_half_channel_info*,struct stedma40_half_channel_info*,unsigned long) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int
d40_prep_sg_phy(struct d40_chan *chan, struct d40_desc *desc,
  struct scatterlist *sg_src, struct scatterlist *sg_dst,
  unsigned int sg_len, dma_addr_t src_dev_addr,
  dma_addr_t dst_dev_addr)
{
 struct stedma40_chan_cfg *cfg = &chan->dma_cfg;
 struct stedma40_half_channel_info *src_info = &cfg->src_info;
 struct stedma40_half_channel_info *dst_info = &cfg->dst_info;
 unsigned long flags = 0;
 int ret;

 if (desc->cyclic)
  flags |= LLI_CYCLIC | LLI_TERM_INT;

 ret = d40_phy_sg_to_lli(sg_src, sg_len, src_dev_addr,
    desc->lli_phy.src,
    virt_to_phys(desc->lli_phy.src),
    chan->src_def_cfg,
    src_info, dst_info, flags);

 ret = d40_phy_sg_to_lli(sg_dst, sg_len, dst_dev_addr,
    desc->lli_phy.dst,
    virt_to_phys(desc->lli_phy.dst),
    chan->dst_def_cfg,
    dst_info, src_info, flags);

 dma_sync_single_for_device(chan->base->dev, desc->lli_pool.dma_addr,
       desc->lli_pool.size, DMA_TO_DEVICE);

 return ret < 0 ? ret : 0;
}
