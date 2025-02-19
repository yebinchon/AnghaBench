
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
struct acpi_als {int dummy; } ;
typedef int s32 ;


 int ACPI_ALS_ILLUMINANCE ;
 int EINVAL ;
 long IIO_CHAN_INFO_PROCESSED ;
 long IIO_CHAN_INFO_RAW ;
 scalar_t__ IIO_LIGHT ;
 int IIO_VAL_INT ;
 int acpi_als_read_value (struct acpi_als*,int ,int*) ;
 struct acpi_als* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int acpi_als_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val,
        int *val2, long mask)
{
 struct acpi_als *als = iio_priv(indio_dev);
 s32 temp_val;
 int ret;

 if ((mask != IIO_CHAN_INFO_PROCESSED) && (mask != IIO_CHAN_INFO_RAW))
  return -EINVAL;


 if (chan->type != IIO_LIGHT)
  return -EINVAL;

 ret = acpi_als_read_value(als, ACPI_ALS_ILLUMINANCE, &temp_val);
 if (ret < 0)
  return ret;

 *val = temp_val;

 return IIO_VAL_INT;
}
