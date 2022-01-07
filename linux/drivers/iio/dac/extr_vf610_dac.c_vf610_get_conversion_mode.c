
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_dac {int conv_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 struct vf610_dac* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int vf610_get_conversion_mode(struct iio_dev *indio_dev,
    const struct iio_chan_spec *chan)
{
 struct vf610_dac *info = iio_priv(indio_dev);

 return info->conv_mode;
}
