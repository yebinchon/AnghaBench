
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int masklength; } ;
struct iio_buffer {int scan_mask; } ;


 int EINVAL ;
 int test_bit (int,int ) ;

__attribute__((used)) static int iio_scan_mask_query(struct iio_dev *indio_dev,
          struct iio_buffer *buffer, int bit)
{
 if (bit > indio_dev->masklength)
  return -EINVAL;

 if (!buffer->scan_mask)
  return 0;


 return !!test_bit(bit, buffer->scan_mask);
}
