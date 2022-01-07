
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_gpadc_iio {TYPE_1__* data; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int temp_scale; } ;


 struct sun4i_gpadc_iio* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int sun4i_gpadc_temp_scale(struct iio_dev *indio_dev, int *val)
{
 struct sun4i_gpadc_iio *info = iio_priv(indio_dev);

 *val = info->data->temp_scale;

 return 0;
}
