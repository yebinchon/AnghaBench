
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us5182d_data {TYPE_1__* client; int default_continuous; int lower_dark_gain; int upper_dark_gain; int us5182d_dark_ths; int ga; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int US5182D_GA_RESOLUTION ;
 int US5182D_REG_AUTO_HDARK_GAIN_DEFAULT ;
 int US5182D_REG_AUTO_LDARK_GAIN_DEFAULT ;
 int device_property_read_bool (int *,char*) ;
 scalar_t__ device_property_read_u16_array (int *,char*,int ,int ) ;
 scalar_t__ device_property_read_u32 (int *,char*,int *) ;
 scalar_t__ device_property_read_u8 (int *,char*,int *) ;
 struct us5182d_data* iio_priv (struct iio_dev*) ;
 int us5182d_dark_ths_vals ;

__attribute__((used)) static void us5182d_get_platform_data(struct iio_dev *indio_dev)
{
 struct us5182d_data *data = iio_priv(indio_dev);

 if (device_property_read_u32(&data->client->dev, "upisemi,glass-coef",
         &data->ga))
  data->ga = US5182D_GA_RESOLUTION;
 if (device_property_read_u16_array(&data->client->dev,
        "upisemi,dark-ths",
        data->us5182d_dark_ths,
        ARRAY_SIZE(us5182d_dark_ths_vals)))
  data->us5182d_dark_ths = us5182d_dark_ths_vals;
 if (device_property_read_u8(&data->client->dev,
        "upisemi,upper-dark-gain",
        &data->upper_dark_gain))
  data->upper_dark_gain = US5182D_REG_AUTO_HDARK_GAIN_DEFAULT;
 if (device_property_read_u8(&data->client->dev,
        "upisemi,lower-dark-gain",
        &data->lower_dark_gain))
  data->lower_dark_gain = US5182D_REG_AUTO_LDARK_GAIN_DEFAULT;
 data->default_continuous = device_property_read_bool(&data->client->dev,
            "upisemi,continuous");
}
