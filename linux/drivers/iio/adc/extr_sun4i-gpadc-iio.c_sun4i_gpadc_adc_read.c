
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_gpadc_iio {int fifo_data_irq; } ;
struct iio_dev {int dummy; } ;


 struct sun4i_gpadc_iio* iio_priv (struct iio_dev*) ;
 int sun4i_gpadc_read (struct iio_dev*,int,int*,int ) ;

__attribute__((used)) static int sun4i_gpadc_adc_read(struct iio_dev *indio_dev, int channel,
    int *val)
{
 struct sun4i_gpadc_iio *info = iio_priv(indio_dev);

 return sun4i_gpadc_read(indio_dev, channel, val, info->fifo_data_irq);
}
