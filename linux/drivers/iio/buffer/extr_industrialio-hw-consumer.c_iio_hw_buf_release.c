
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_buffer {int dummy; } ;
struct hw_consumer_buffer {int dummy; } ;


 struct hw_consumer_buffer* iio_buffer_to_hw_consumer_buffer (struct iio_buffer*) ;
 int kfree (struct hw_consumer_buffer*) ;

__attribute__((used)) static void iio_hw_buf_release(struct iio_buffer *buffer)
{
 struct hw_consumer_buffer *hw_buf =
  iio_buffer_to_hw_consumer_buffer(buffer);
 kfree(hw_buf);
}
