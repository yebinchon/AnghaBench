
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_phandle_args {int args_count; scalar_t__* args; } ;
struct of_dma {struct dw_dma* of_dma_data; } ;
struct dw_dma_slave {scalar_t__ src_id; scalar_t__ dst_id; scalar_t__ m_master; scalar_t__ p_master; int dma_dev; } ;
struct TYPE_3__ {int dev; } ;
struct dw_dma {TYPE_2__* pdata; TYPE_1__ dma; } ;
struct dma_chan {int dummy; } ;
typedef int dma_cap_mask_t ;
struct TYPE_4__ {scalar_t__ nr_masters; } ;


 int DMA_SLAVE ;
 scalar_t__ DW_DMA_MAX_NR_REQUESTS ;
 scalar_t__ WARN_ON (int) ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 struct dma_chan* dma_request_channel (int ,int ,struct dw_dma_slave*) ;
 int dw_dma_filter ;

__attribute__((used)) static struct dma_chan *dw_dma_of_xlate(struct of_phandle_args *dma_spec,
     struct of_dma *ofdma)
{
 struct dw_dma *dw = ofdma->of_dma_data;
 struct dw_dma_slave slave = {
  .dma_dev = dw->dma.dev,
 };
 dma_cap_mask_t cap;

 if (dma_spec->args_count != 3)
  return ((void*)0);

 slave.src_id = dma_spec->args[0];
 slave.dst_id = dma_spec->args[0];
 slave.m_master = dma_spec->args[1];
 slave.p_master = dma_spec->args[2];

 if (WARN_ON(slave.src_id >= DW_DMA_MAX_NR_REQUESTS ||
      slave.dst_id >= DW_DMA_MAX_NR_REQUESTS ||
      slave.m_master >= dw->pdata->nr_masters ||
      slave.p_master >= dw->pdata->nr_masters))
  return ((void*)0);

 dma_cap_zero(cap);
 dma_cap_set(DMA_SLAVE, cap);


 return dma_request_channel(cap, dw_dma_filter, &slave);
}
