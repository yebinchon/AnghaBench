
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int tiadc_step_config (struct iio_dev*) ;

__attribute__((used)) static int tiadc_buffer_postdisable(struct iio_dev *indio_dev)
{
 tiadc_step_config(indio_dev);

 return 0;
}
