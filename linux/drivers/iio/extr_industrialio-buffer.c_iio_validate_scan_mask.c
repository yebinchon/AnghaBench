
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* setup_ops; } ;
struct TYPE_2__ {int (* validate_scan_mask ) (struct iio_dev*,unsigned long const*) ;} ;


 int stub1 (struct iio_dev*,unsigned long const*) ;

__attribute__((used)) static bool iio_validate_scan_mask(struct iio_dev *indio_dev,
 const unsigned long *mask)
{
 if (!indio_dev->setup_ops->validate_scan_mask)
  return 1;

 return indio_dev->setup_ops->validate_scan_mask(indio_dev, mask);
}
