
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_buffer {TYPE_1__* access; } ;
struct TYPE_2__ {int (* disable ) (struct iio_buffer*,struct iio_dev*) ;} ;


 int stub1 (struct iio_buffer*,struct iio_dev*) ;

__attribute__((used)) static int iio_buffer_disable(struct iio_buffer *buffer,
 struct iio_dev *indio_dev)
{
 if (!buffer->access->disable)
  return 0;
 return buffer->access->disable(buffer, indio_dev);
}
