
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_platform_data {int dma_filter; int mem_to_engine; } ;
struct TYPE_2__ {int complete; int chan_mem2hash; int cfg_mem2hash; int mask; } ;
struct hash_device_data {TYPE_1__ dma; scalar_t__ phybase; } ;
struct dma_slave_config {int dst_maxburst; int dst_addr_width; scalar_t__ dst_addr; int direction; } ;
struct device {struct hash_platform_data* platform_data; } ;


 int DMA_MEM_TO_DEV ;
 int DMA_SLAVE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 scalar_t__ HASH_DMA_FIFO ;
 int dma_cap_set (int ,int ) ;
 int dma_cap_zero (int ) ;
 int dma_request_channel (int ,int ,int ) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int init_completion (int *) ;

__attribute__((used)) static void hash_dma_setup_channel(struct hash_device_data *device_data,
       struct device *dev)
{
 struct hash_platform_data *platform_data = dev->platform_data;
 struct dma_slave_config conf = {
  .direction = DMA_MEM_TO_DEV,
  .dst_addr = device_data->phybase + HASH_DMA_FIFO,
  .dst_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES,
  .dst_maxburst = 16,
 };

 dma_cap_zero(device_data->dma.mask);
 dma_cap_set(DMA_SLAVE, device_data->dma.mask);

 device_data->dma.cfg_mem2hash = platform_data->mem_to_engine;
 device_data->dma.chan_mem2hash =
  dma_request_channel(device_data->dma.mask,
        platform_data->dma_filter,
        device_data->dma.cfg_mem2hash);

 dmaengine_slave_config(device_data->dma.chan_mem2hash, &conf);

 init_completion(&device_data->dma.complete);
}
