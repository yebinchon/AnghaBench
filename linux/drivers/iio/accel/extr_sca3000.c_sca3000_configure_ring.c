
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int modes; int dev; } ;
struct iio_buffer {int dummy; } ;


 int ENOMEM ;
 int INDIO_BUFFER_SOFTWARE ;
 struct iio_buffer* devm_iio_kfifo_allocate (int *) ;
 int iio_device_attach_buffer (struct iio_dev*,struct iio_buffer*) ;

__attribute__((used)) static int sca3000_configure_ring(struct iio_dev *indio_dev)
{
 struct iio_buffer *buffer;

 buffer = devm_iio_kfifo_allocate(&indio_dev->dev);
 if (!buffer)
  return -ENOMEM;

 iio_device_attach_buffer(indio_dev, buffer);
 indio_dev->modes |= INDIO_BUFFER_SOFTWARE;

 return 0;
}
