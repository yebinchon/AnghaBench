
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_block {int state; } ;






__attribute__((used)) static bool iio_dma_block_reusable(struct iio_dma_buffer_block *block)
{





 switch (block->state) {
 case 130:
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
