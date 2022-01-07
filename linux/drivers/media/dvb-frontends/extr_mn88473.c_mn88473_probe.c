
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct regmap_config {int reg_bits; int val_bits; } ;
struct TYPE_5__ {struct i2c_client* demodulator_priv; int ops; } ;
struct mn88473_dev {int clk; struct i2c_client** regmap; struct i2c_client** client; TYPE_1__ frontend; scalar_t__ i2c_wr_max; } ;
struct mn88473_config {int xtal; TYPE_1__** fe; scalar_t__ i2c_wr_max; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct mn88473_config* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int adapter; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct i2c_client*) ;
 int PTR_ERR (struct i2c_client*) ;
 int dev_dbg (TYPE_2__*,char*,...) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_info (TYPE_2__*,char*) ;
 void* i2c_new_dummy_device (int ,int) ;
 int i2c_set_clientdata (struct i2c_client*,struct mn88473_dev*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int kfree (struct mn88473_dev*) ;
 struct mn88473_dev* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mn88473_ops ;
 int regmap_exit (struct i2c_client*) ;
 void* regmap_init_i2c (struct i2c_client*,struct regmap_config const*) ;
 int regmap_read (struct i2c_client*,int,unsigned int*) ;
 int regmap_write (struct i2c_client*,int,int) ;

__attribute__((used)) static int mn88473_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct mn88473_config *config = client->dev.platform_data;
 struct mn88473_dev *dev;
 int ret;
 unsigned int uitmp;
 static const struct regmap_config regmap_config = {
  .reg_bits = 8,
  .val_bits = 8,
 };

 dev_dbg(&client->dev, "\n");


 if (config->fe == ((void*)0)) {
  dev_err(&client->dev, "frontend pointer not defined\n");
  ret = -EINVAL;
  goto err;
 }

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }

 if (config->i2c_wr_max)
  dev->i2c_wr_max = config->i2c_wr_max;
 else
  dev->i2c_wr_max = ~0;

 if (config->xtal)
  dev->clk = config->xtal;
 else
  dev->clk = 25000000;
 dev->client[0] = client;
 dev->regmap[0] = regmap_init_i2c(dev->client[0], &regmap_config);
 if (IS_ERR(dev->regmap[0])) {
  ret = PTR_ERR(dev->regmap[0]);
  goto err_kfree;
 }
 dev->client[1] = i2c_new_dummy_device(client->adapter, 0x1a);
 if (IS_ERR(dev->client[1])) {
  ret = PTR_ERR(dev->client[1]);
  dev_err(&client->dev, "I2C registration failed\n");
  goto err_regmap_0_regmap_exit;
 }
 dev->regmap[1] = regmap_init_i2c(dev->client[1], &regmap_config);
 if (IS_ERR(dev->regmap[1])) {
  ret = PTR_ERR(dev->regmap[1]);
  goto err_client_1_i2c_unregister_device;
 }
 i2c_set_clientdata(dev->client[1], dev);

 dev->client[2] = i2c_new_dummy_device(client->adapter, 0x1c);
 if (IS_ERR(dev->client[2])) {
  ret = PTR_ERR(dev->client[2]);
  dev_err(&client->dev, "2nd I2C registration failed\n");
  goto err_regmap_1_regmap_exit;
 }
 dev->regmap[2] = regmap_init_i2c(dev->client[2], &regmap_config);
 if (IS_ERR(dev->regmap[2])) {
  ret = PTR_ERR(dev->regmap[2]);
  goto err_client_2_i2c_unregister_device;
 }
 i2c_set_clientdata(dev->client[2], dev);


 ret = regmap_read(dev->regmap[2], 0xff, &uitmp);
 if (ret)
  goto err_regmap_2_regmap_exit;

 dev_dbg(&client->dev, "chip id=%02x\n", uitmp);

 if (uitmp != 0x03) {
  ret = -ENODEV;
  goto err_regmap_2_regmap_exit;
 }


 ret = regmap_write(dev->regmap[2], 0x05, 0x3e);
 if (ret)
  goto err_regmap_2_regmap_exit;


 memcpy(&dev->frontend.ops, &mn88473_ops, sizeof(dev->frontend.ops));
 dev->frontend.demodulator_priv = client;
 *config->fe = &dev->frontend;
 i2c_set_clientdata(client, dev);

 dev_info(&client->dev, "Panasonic MN88473 successfully identified\n");

 return 0;
err_regmap_2_regmap_exit:
 regmap_exit(dev->regmap[2]);
err_client_2_i2c_unregister_device:
 i2c_unregister_device(dev->client[2]);
err_regmap_1_regmap_exit:
 regmap_exit(dev->regmap[1]);
err_client_1_i2c_unregister_device:
 i2c_unregister_device(dev->client[1]);
err_regmap_0_regmap_exit:
 regmap_exit(dev->regmap[0]);
err_kfree:
 kfree(dev);
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
