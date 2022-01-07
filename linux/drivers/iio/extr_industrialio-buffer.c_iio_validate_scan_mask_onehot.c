
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int masklength; } ;


 int bitmap_weight (unsigned long const*,int ) ;

bool iio_validate_scan_mask_onehot(struct iio_dev *indio_dev,
 const unsigned long *mask)
{
 return bitmap_weight(mask, indio_dev->masklength) == 1;
}
