
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_slave_config {int dst_maxburst; int src_maxburst; int src_addr_width; scalar_t__ src_addr; int direction; int dst_addr_width; scalar_t__ dst_addr; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int cryp_dma_complete; void* chan_cryp2mem; void* chan_mem2cryp; int cfg_cryp2mem; int mask; int cfg_mem2cryp; } ;
struct cryp_device_data {TYPE_1__ dma; scalar_t__ phybase; } ;


 scalar_t__ CRYP_DMA_RX_FIFO ;
 scalar_t__ CRYP_DMA_TX_FIFO ;
 int DMA_DEV_TO_MEM ;
 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 void* dma_request_channel (int ,int ,int ) ;
 int dmaengine_slave_config (void*,struct dma_slave_config*) ;
 int engine_to_mem ;
 int init_completion (int *) ;
 int mem_to_engine ;
 int stedma40_filter ;

__attribute__((used)) static void cryp_dma_setup_channel(struct cryp_device_data *device_data,
       struct device *dev)
{
 struct dma_slave_config mem2cryp = {
  .direction = DMA_MEM_TO_DEV,
  .dst_addr = device_data->phybase + CRYP_DMA_TX_FIFO,
  .dst_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES,
  .dst_maxburst = 4,
 };
 struct dma_slave_config cryp2mem = {
  .direction = DMA_DEV_TO_MEM,
  .src_addr = device_data->phybase + CRYP_DMA_RX_FIFO,
  .src_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES,
  .src_maxburst = 4,
 };

 dma_cap_zero(device_data->dma.mask);
 dma_cap_set(DMA_SLAVE, device_data->dma.mask);

 device_data->dma.cfg_mem2cryp = mem_to_engine;
 device_data->dma.chan_mem2cryp =
  dma_request_channel(device_data->dma.mask,
        stedma40_filter,
        device_data->dma.cfg_mem2cryp);

 device_data->dma.cfg_cryp2mem = engine_to_mem;
 device_data->dma.chan_cryp2mem =
  dma_request_channel(device_data->dma.mask,
        stedma40_filter,
        device_data->dma.cfg_cryp2mem);

 dmaengine_slave_config(device_data->dma.chan_mem2cryp, &mem2cryp);
 dmaengine_slave_config(device_data->dma.chan_cryp2mem, &cryp2mem);

 init_completion(&device_data->dma.cryp_dma_complete);
}
