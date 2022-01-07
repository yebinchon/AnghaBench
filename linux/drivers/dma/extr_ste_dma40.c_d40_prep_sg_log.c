
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stedma40_half_channel_info {int data_width; } ;
struct stedma40_chan_cfg {struct stedma40_half_channel_info dst_info; struct stedma40_half_channel_info src_info; } ;
struct scatterlist {int dummy; } ;
struct TYPE_3__ {int dst; int src; } ;
struct d40_desc {TYPE_1__ lli_log; } ;
struct TYPE_4__ {int lcsp3; int lcsp1; } ;
struct d40_chan {TYPE_2__ log_def; struct stedma40_chan_cfg dma_cfg; } ;
typedef int dma_addr_t ;


 int d40_log_sg_to_lli (struct scatterlist*,unsigned int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
d40_prep_sg_log(struct d40_chan *chan, struct d40_desc *desc,
  struct scatterlist *sg_src, struct scatterlist *sg_dst,
  unsigned int sg_len, dma_addr_t src_dev_addr,
  dma_addr_t dst_dev_addr)
{
 struct stedma40_chan_cfg *cfg = &chan->dma_cfg;
 struct stedma40_half_channel_info *src_info = &cfg->src_info;
 struct stedma40_half_channel_info *dst_info = &cfg->dst_info;
 int ret;

 ret = d40_log_sg_to_lli(sg_src, sg_len,
    src_dev_addr,
    desc->lli_log.src,
    chan->log_def.lcsp1,
    src_info->data_width,
    dst_info->data_width);

 ret = d40_log_sg_to_lli(sg_dst, sg_len,
    dst_dev_addr,
    desc->lli_log.dst,
    chan->log_def.lcsp3,
    dst_info->data_width,
    src_info->data_width);

 return ret < 0 ? ret : 0;
}
