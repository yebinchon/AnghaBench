
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_gpadc_iio {int indio_dev; } ;


 int ETIMEDOUT ;
 int sun4i_gpadc_temp_offset (int ,int*) ;
 scalar_t__ sun4i_gpadc_temp_read (int ,int*) ;
 int sun4i_gpadc_temp_scale (int ,int*) ;

__attribute__((used)) static int sun4i_gpadc_get_temp(void *data, int *temp)
{
 struct sun4i_gpadc_iio *info = data;
 int val, scale, offset;

 if (sun4i_gpadc_temp_read(info->indio_dev, &val))
  return -ETIMEDOUT;

 sun4i_gpadc_temp_scale(info->indio_dev, &scale);
 sun4i_gpadc_temp_offset(info->indio_dev, &offset);

 *temp = (val + offset) * scale;

 return 0;
}
