
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dma_buffer_block {int kref; } ;


 int iio_buffer_block_release_atomic ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void iio_buffer_block_put_atomic(struct iio_dma_buffer_block *block)
{
 kref_put(&block->kref, iio_buffer_block_release_atomic);
}
