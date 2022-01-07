
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int dummy; } ;
struct dmaengine_buffer {int queue; } ;


 struct dmaengine_buffer* iio_buffer_to_dmaengine_buffer (struct iio_buffer*) ;
 int iio_dma_buffer_release (int *) ;
 int kfree (struct dmaengine_buffer*) ;

__attribute__((used)) static void iio_dmaengine_buffer_release(struct iio_buffer *buf)
{
 struct dmaengine_buffer *dmaengine_buffer =
  iio_buffer_to_dmaengine_buffer(buf);

 iio_dma_buffer_release(&dmaengine_buffer->queue);
 kfree(dmaengine_buffer);
}
