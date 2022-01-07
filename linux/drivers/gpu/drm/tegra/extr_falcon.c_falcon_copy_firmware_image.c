
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int size; int * vaddr; } ;
struct falcon {TYPE_1__ firmware; int dev; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int dev_err (int ,char*,int) ;
 int dma_map_single (int ,int *,int ,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void falcon_copy_firmware_image(struct falcon *falcon,
           const struct firmware *firmware)
{
 u32 *firmware_vaddr = falcon->firmware.vaddr;
 dma_addr_t daddr;
 size_t i;
 int err;


 for (i = 0; i < firmware->size / sizeof(u32); i++)
  firmware_vaddr[i] = le32_to_cpu(((u32 *)firmware->data)[i]);


 daddr = dma_map_single(falcon->dev, firmware_vaddr,
          falcon->firmware.size, DMA_TO_DEVICE);
 err = dma_mapping_error(falcon->dev, daddr);
 if (err) {
  dev_err(falcon->dev, "failed to map firmware: %d\n", err);
  return;
 }
 dma_sync_single_for_device(falcon->dev, daddr,
       falcon->firmware.size, DMA_TO_DEVICE);
 dma_unmap_single(falcon->dev, daddr, falcon->firmware.size,
    DMA_TO_DEVICE);
}
