
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct iio_dev {int info; struct iio_buffer* buffer; } ;
struct iio_buffer {int watermark; int pollq; } ;
struct file {struct iio_dev* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 scalar_t__ iio_buffer_ready (struct iio_dev*,struct iio_buffer*,int ,int ) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

__poll_t iio_buffer_poll(struct file *filp,
        struct poll_table_struct *wait)
{
 struct iio_dev *indio_dev = filp->private_data;
 struct iio_buffer *rb = indio_dev->buffer;

 if (!indio_dev->info || rb == ((void*)0))
  return 0;

 poll_wait(filp, &rb->pollq, wait);
 if (iio_buffer_ready(indio_dev, rb, rb->watermark, 0))
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
