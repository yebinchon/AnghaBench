
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk3310_data {int reg_int_ps; int regmap; struct i2c_client* client; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int STK3310_CHIP_ID_VAL ;
 int STK3310_PSINT_EN ;
 int STK3310_REG_ID ;
 int STK3310_STATE_EN_ALS ;
 int STK3310_STATE_EN_PS ;
 int STK3311_CHIP_ID_VAL ;
 int STK3335_CHIP_ID_VAL ;
 int dev_err (int *,char*,...) ;
 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int regmap_field_write (int ,int ) ;
 int regmap_read (int ,int ,int*) ;
 int stk3310_set_state (struct stk3310_data*,int) ;

__attribute__((used)) static int stk3310_init(struct iio_dev *indio_dev)
{
 int ret;
 int chipid;
 u8 state;
 struct stk3310_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;

 ret = regmap_read(data->regmap, STK3310_REG_ID, &chipid);
 if (ret < 0)
  return ret;

 if (chipid != STK3310_CHIP_ID_VAL &&
     chipid != STK3311_CHIP_ID_VAL &&
     chipid != STK3335_CHIP_ID_VAL) {
  dev_err(&client->dev, "invalid chip id: 0x%x\n", chipid);
  return -ENODEV;
 }

 state = STK3310_STATE_EN_ALS | STK3310_STATE_EN_PS;
 ret = stk3310_set_state(data, state);
 if (ret < 0) {
  dev_err(&client->dev, "failed to enable sensor");
  return ret;
 }


 ret = regmap_field_write(data->reg_int_ps, STK3310_PSINT_EN);
 if (ret < 0)
  dev_err(&client->dev, "failed to enable interrupts!\n");

 return ret;
}
