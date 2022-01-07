
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* info; } ;
struct iio_buffer {int dummy; } ;
struct TYPE_2__ {int (* hwfifo_flush_to_buffer ) (struct iio_dev*,size_t) ;} ;


 int ENODEV ;
 int stub1 (struct iio_dev*,size_t) ;

__attribute__((used)) static int iio_buffer_flush_hwfifo(struct iio_dev *indio_dev,
       struct iio_buffer *buf, size_t required)
{
 if (!indio_dev->info->hwfifo_flush_to_buffer)
  return -ENODEV;

 return indio_dev->info->hwfifo_flush_to_buffer(indio_dev, required);
}
