
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int dev_type; } ;
struct TYPE_9__ {int lcsp3; int lcsp1; } ;
struct TYPE_8__ {size_t chan_id; TYPE_1__* device; } ;
struct d40_chan {int dst_def_cfg; int src_def_cfg; TYPE_4__ dma_cfg; TYPE_3__ log_def; TYPE_2__ chan; } ;
typedef int dma_cap_mask_t ;
struct TYPE_7__ {int cap_mask; } ;


 int BIT (int ) ;
 int D40_SREG_CFG_EIM_POS ;
 int D40_SREG_CFG_TIM_POS ;
 int DMA_MEMCPY ;
 int DMA_SLAVE ;
 int EINVAL ;
 int chan_err (struct d40_chan*,char*) ;
 int d40_log_cfg (TYPE_4__*,int *,int *) ;
 int * dma40_memcpy_channels ;
 TYPE_4__ dma40_memcpy_conf_log ;
 TYPE_4__ dma40_memcpy_conf_phy ;
 scalar_t__ dma_has_cap (int ,int ) ;

__attribute__((used)) static int d40_config_memcpy(struct d40_chan *d40c)
{
 dma_cap_mask_t cap = d40c->chan.device->cap_mask;

 if (dma_has_cap(DMA_MEMCPY, cap) && !dma_has_cap(DMA_SLAVE, cap)) {
  d40c->dma_cfg = dma40_memcpy_conf_log;
  d40c->dma_cfg.dev_type = dma40_memcpy_channels[d40c->chan.chan_id];

  d40_log_cfg(&d40c->dma_cfg,
       &d40c->log_def.lcsp1, &d40c->log_def.lcsp3);

 } else if (dma_has_cap(DMA_MEMCPY, cap) &&
     dma_has_cap(DMA_SLAVE, cap)) {
  d40c->dma_cfg = dma40_memcpy_conf_phy;


  d40c->dst_def_cfg |= BIT(D40_SREG_CFG_TIM_POS);


  d40c->src_def_cfg |= BIT(D40_SREG_CFG_EIM_POS);
  d40c->dst_def_cfg |= BIT(D40_SREG_CFG_EIM_POS);

 } else {
  chan_err(d40c, "No memcpy\n");
  return -EINVAL;
 }

 return 0;
}
