
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct us5182d_data {int als_enabled; int px_enabled; int power_mode; int default_continuous; int client; int px_high_th; int px_low_th; scalar_t__ opmode; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int val; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int US5182D_CFG0_SHUTDOWN_EN ;
 int US5182D_CONTINUOUS ;
 int US5182D_ONESHOT ;
 int US5182D_REG_PXH_TH_DEFAULT ;
 int US5182D_REG_PXL_TH_DEFAULT ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct us5182d_data* iio_priv (struct iio_dev*) ;
 TYPE_1__* us5182d_regvals ;
 int us5182d_reset (struct iio_dev*) ;
 int us5182d_shutdown_en (struct us5182d_data*,int ) ;

__attribute__((used)) static int us5182d_init(struct iio_dev *indio_dev)
{
 struct us5182d_data *data = iio_priv(indio_dev);
 int i, ret;

 ret = us5182d_reset(indio_dev);
 if (ret < 0)
  return ret;

 data->opmode = 0;
 data->power_mode = US5182D_CONTINUOUS;
 data->px_low_th = US5182D_REG_PXL_TH_DEFAULT;
 data->px_high_th = US5182D_REG_PXH_TH_DEFAULT;

 for (i = 0; i < ARRAY_SIZE(us5182d_regvals); i++) {
  ret = i2c_smbus_write_byte_data(data->client,
      us5182d_regvals[i].reg,
      us5182d_regvals[i].val);
  if (ret < 0)
   return ret;
 }

 data->als_enabled = 1;
 data->px_enabled = 1;

 if (!data->default_continuous) {
  ret = us5182d_shutdown_en(data, US5182D_CFG0_SHUTDOWN_EN);
  if (ret < 0)
   return ret;
  data->power_mode = US5182D_ONESHOT;
 }

 return ret;
}
