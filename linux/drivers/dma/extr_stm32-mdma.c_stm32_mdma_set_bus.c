
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_mdma_device {int nr_ahb_addr_masks; int* ahb_addr_masks; } ;



__attribute__((used)) static void stm32_mdma_set_bus(struct stm32_mdma_device *dmadev, u32 *ctbr,
          u32 ctbr_mask, u32 src_addr)
{
 u32 mask;
 int i;


 *ctbr &= ~ctbr_mask;
 mask = src_addr & 0xF0000000;
 for (i = 0; i < dmadev->nr_ahb_addr_masks; i++) {
  if (mask == dmadev->ahb_addr_masks[i]) {
   *ctbr |= ctbr_mask;
   break;
  }
 }
}
