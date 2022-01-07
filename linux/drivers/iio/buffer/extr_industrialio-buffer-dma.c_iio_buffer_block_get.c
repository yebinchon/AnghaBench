
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_block {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void iio_buffer_block_get(struct iio_dma_buffer_block *block)
{
 kref_get(&block->kref);
}
