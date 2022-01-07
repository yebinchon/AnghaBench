
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int available_scan_masks; } ;


 int bitmap_free (unsigned long const*) ;

__attribute__((used)) static void iio_free_scan_mask(struct iio_dev *indio_dev,
 const unsigned long *mask)
{

 if (!indio_dev->available_scan_masks)
  bitmap_free(mask);
}
