
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int iio_triggered_buffer_cleanup (struct iio_dev*) ;

__attribute__((used)) static void devm_iio_triggered_buffer_clean(struct device *dev, void *res)
{
 iio_triggered_buffer_cleanup(*(struct iio_dev **)res);
}
