
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int * timings; int of_node; int * funcs; } ;
struct sii902x {TYPE_1__* i2cmux; TYPE_3__ bridge; int regmap; int mutex; int reset_gpio; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {int adapter; int irq; struct device dev; } ;
struct TYPE_4__ {struct sii902x* priv; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_MUX_GATE ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned int SII902X_HOTPLUG_EVENT ;
 int SII902X_INT_ENABLE ;
 int SII902X_INT_STATUS ;
 int SII902X_REG_CHIPID (int ) ;
 int SII902X_REG_TPI_RQB ;
 int default_sii902x_timings ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct sii902x* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int devm_request_threaded_irq (struct device*,int ,int *,int ,int ,int ,struct sii902x*) ;
 int drm_bridge_add (TYPE_3__*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_mux_add_adapter (TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* i2c_mux_alloc (int ,struct device*,int,int ,int ,int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct sii902x*) ;
 int mutex_init (int *) ;
 int regmap_bulk_read (int ,int ,int**,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int sii902x_audio_codec_init (struct sii902x*,struct device*) ;
 int sii902x_bridge_funcs ;
 int sii902x_i2c_bypass_deselect ;
 int sii902x_i2c_bypass_select ;
 int sii902x_interrupt ;
 int sii902x_regmap_config ;
 int sii902x_reset (struct sii902x*) ;

__attribute__((used)) static int sii902x_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 unsigned int status = 0;
 struct sii902x *sii902x;
 u8 chipid[4];
 int ret;

 ret = i2c_check_functionality(client->adapter,
          I2C_FUNC_SMBUS_BYTE_DATA);
 if (!ret) {
  dev_err(dev, "I2C adapter not suitable\n");
  return -EIO;
 }

 sii902x = devm_kzalloc(dev, sizeof(*sii902x), GFP_KERNEL);
 if (!sii902x)
  return -ENOMEM;

 sii902x->i2c = client;
 sii902x->regmap = devm_regmap_init_i2c(client, &sii902x_regmap_config);
 if (IS_ERR(sii902x->regmap))
  return PTR_ERR(sii902x->regmap);

 sii902x->reset_gpio = devm_gpiod_get_optional(dev, "reset",
            GPIOD_OUT_LOW);
 if (IS_ERR(sii902x->reset_gpio)) {
  dev_err(dev, "Failed to retrieve/request reset gpio: %ld\n",
   PTR_ERR(sii902x->reset_gpio));
  return PTR_ERR(sii902x->reset_gpio);
 }

 mutex_init(&sii902x->mutex);

 sii902x_reset(sii902x);

 ret = regmap_write(sii902x->regmap, SII902X_REG_TPI_RQB, 0x0);
 if (ret)
  return ret;

 ret = regmap_bulk_read(sii902x->regmap, SII902X_REG_CHIPID(0),
          &chipid, 4);
 if (ret) {
  dev_err(dev, "regmap_read failed %d\n", ret);
  return ret;
 }

 if (chipid[0] != 0xb0) {
  dev_err(dev, "Invalid chipid: %02x (expecting 0xb0)\n",
   chipid[0]);
  return -EINVAL;
 }


 regmap_read(sii902x->regmap, SII902X_INT_STATUS, &status);
 regmap_write(sii902x->regmap, SII902X_INT_STATUS, status);

 if (client->irq > 0) {
  regmap_write(sii902x->regmap, SII902X_INT_ENABLE,
        SII902X_HOTPLUG_EVENT);

  ret = devm_request_threaded_irq(dev, client->irq, ((void*)0),
      sii902x_interrupt,
      IRQF_ONESHOT, dev_name(dev),
      sii902x);
  if (ret)
   return ret;
 }

 sii902x->bridge.funcs = &sii902x_bridge_funcs;
 sii902x->bridge.of_node = dev->of_node;
 sii902x->bridge.timings = &default_sii902x_timings;
 drm_bridge_add(&sii902x->bridge);

 sii902x_audio_codec_init(sii902x, dev);

 i2c_set_clientdata(client, sii902x);

 sii902x->i2cmux = i2c_mux_alloc(client->adapter, dev,
     1, 0, I2C_MUX_GATE,
     sii902x_i2c_bypass_select,
     sii902x_i2c_bypass_deselect);
 if (!sii902x->i2cmux)
  return -ENOMEM;

 sii902x->i2cmux->priv = sii902x;
 return i2c_mux_add_adapter(sii902x->i2cmux, 0, 0, 0);
}
