
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_buffer {TYPE_1__* access; int scan_timestamp; int scan_mask; } ;
struct TYPE_2__ {int (* set_bytes_per_datum ) (struct iio_buffer*,unsigned int) ;} ;


 unsigned int iio_compute_scan_bytes (struct iio_dev*,int ,int ) ;
 int stub1 (struct iio_buffer*,unsigned int) ;

__attribute__((used)) static void iio_buffer_update_bytes_per_datum(struct iio_dev *indio_dev,
 struct iio_buffer *buffer)
{
 unsigned int bytes;

 if (!buffer->access->set_bytes_per_datum)
  return;

 bytes = iio_compute_scan_bytes(indio_dev, buffer->scan_mask,
  buffer->scan_timestamp);

 buffer->access->set_bytes_per_datum(buffer, bytes);
}
