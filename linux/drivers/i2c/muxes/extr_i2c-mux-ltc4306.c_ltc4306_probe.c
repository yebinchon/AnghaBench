
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc4306 {struct gpio_desc* regmap; struct chip_desc const* chip; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int name; int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct chip_desc {int nchans; } ;
struct TYPE_2__ {size_t driver_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GPIOD_OUT_LOW ;
 int I2C_MUX_LOCKED ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 unsigned int LTC_DOWNSTREAM_ACCL_EN ;
 int LTC_REG_CONFIG ;
 int LTC_REG_SWITCH ;
 unsigned int LTC_UPSTREAM_ACCL_EN ;
 int PTR_ERR (struct gpio_desc*) ;
 struct chip_desc* chips ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int,int ) ;
 int dev_warn (int *,char*) ;
 int device_property_read_bool (int *,char*) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 struct gpio_desc* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int gpiod_set_value (struct gpio_desc*,int) ;
 TYPE_1__* i2c_match_id (int ,struct i2c_client*) ;
 int i2c_mux_add_adapter (struct i2c_mux_core*,int ,int,int ) ;
 struct i2c_mux_core* i2c_mux_alloc (struct i2c_adapter*,int *,int,int,int ,int ,int *) ;
 int i2c_mux_del_adapters (struct i2c_mux_core*) ;
 struct ltc4306* i2c_mux_priv (struct i2c_mux_core*) ;
 int i2c_set_clientdata (struct i2c_client*,struct i2c_mux_core*) ;
 int * ltc4306_deselect_mux ;
 int ltc4306_gpio_init (struct ltc4306*) ;
 int ltc4306_id ;
 int ltc4306_regmap_config ;
 int ltc4306_select_mux ;
 struct chip_desc* of_device_get_match_data (int *) ;
 scalar_t__ regmap_write (struct gpio_desc*,int ,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int ltc4306_probe(struct i2c_client *client)
{
 struct i2c_adapter *adap = client->adapter;
 const struct chip_desc *chip;
 struct i2c_mux_core *muxc;
 struct ltc4306 *data;
 struct gpio_desc *gpio;
 bool idle_disc;
 unsigned int val = 0;
 int num, ret;

 chip = of_device_get_match_data(&client->dev);

 if (!chip)
  chip = &chips[i2c_match_id(ltc4306_id, client)->driver_data];

 idle_disc = device_property_read_bool(&client->dev,
           "i2c-mux-idle-disconnect");

 muxc = i2c_mux_alloc(adap, &client->dev,
        chip->nchans, sizeof(*data),
        I2C_MUX_LOCKED, ltc4306_select_mux,
        idle_disc ? ltc4306_deselect_mux : ((void*)0));
 if (!muxc)
  return -ENOMEM;
 data = i2c_mux_priv(muxc);
 data->chip = chip;

 i2c_set_clientdata(client, muxc);

 data->regmap = devm_regmap_init_i2c(client, &ltc4306_regmap_config);
 if (IS_ERR(data->regmap)) {
  ret = PTR_ERR(data->regmap);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }


 gpio = devm_gpiod_get_optional(&client->dev, "enable", GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 if (gpio) {
  udelay(1);
  gpiod_set_value(gpio, 1);
 }






 if (regmap_write(data->regmap, LTC_REG_SWITCH, 0) < 0) {
  dev_warn(&client->dev, "probe failed\n");
  return -ENODEV;
 }

 if (device_property_read_bool(&client->dev,
          "ltc,downstream-accelerators-enable"))
  val |= LTC_DOWNSTREAM_ACCL_EN;

 if (device_property_read_bool(&client->dev,
          "ltc,upstream-accelerators-enable"))
  val |= LTC_UPSTREAM_ACCL_EN;

 if (regmap_write(data->regmap, LTC_REG_CONFIG, val) < 0)
  return -ENODEV;

 ret = ltc4306_gpio_init(data);
 if (ret < 0)
  return ret;


 for (num = 0; num < chip->nchans; num++) {
  ret = i2c_mux_add_adapter(muxc, 0, num, 0);
  if (ret) {
   i2c_mux_del_adapters(muxc);
   return ret;
  }
 }

 dev_info(&client->dev,
   "registered %d multiplexed busses for I2C switch %s\n",
   num, client->name);

 return 0;
}
