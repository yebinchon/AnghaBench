
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bits; } ;
struct dma_device {TYPE_1__ cap_mask; } ;
struct TYPE_5__ {int bits; } ;
typedef TYPE_2__ dma_cap_mask_t ;


 int DMA_TX_TYPE_END ;
 int bitmap_and (int ,int ,int ,int ) ;
 int bitmap_equal (int ,int ,int ) ;

__attribute__((used)) static int
__dma_device_satisfies_mask(struct dma_device *device,
       const dma_cap_mask_t *want)
{
 dma_cap_mask_t has;

 bitmap_and(has.bits, want->bits, device->cap_mask.bits,
  DMA_TX_TYPE_END);
 return bitmap_equal(want->bits, has.bits, DMA_TX_TYPE_END);
}
