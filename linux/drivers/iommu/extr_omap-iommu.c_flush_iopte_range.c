
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dma_sync_single_range_for_device (struct device*,int ,unsigned long,size_t,int ) ;

__attribute__((used)) static void flush_iopte_range(struct device *dev, dma_addr_t dma,
         unsigned long offset, int num_entries)
{
 size_t size = num_entries * sizeof(u32);

 dma_sync_single_range_for_device(dev, dma, offset, size, DMA_TO_DEVICE);
}
