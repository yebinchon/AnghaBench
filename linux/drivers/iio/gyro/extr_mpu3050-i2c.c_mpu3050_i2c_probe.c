
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct mpu3050 {TYPE_1__* i2cmux; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int dev; int adapter; int irq; } ;
struct TYPE_3__ {struct mpu3050* priv; } ;


 int ENODEV ;
 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int I2C_MUX_GATE ;
 int I2C_MUX_LOCKED ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (int *,char*,...) ;
 int dev_get_drvdata (int *) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_mux_add_adapter (TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* i2c_mux_alloc (int ,int *,int,int ,int,int ,int ) ;
 struct mpu3050* iio_priv (int ) ;
 int mpu3050_common_probe (int *,struct regmap*,int ,char const*) ;
 int mpu3050_i2c_bypass_deselect ;
 int mpu3050_i2c_bypass_select ;
 int mpu3050_i2c_regmap_config ;

__attribute__((used)) static int mpu3050_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct regmap *regmap;
 const char *name;
 struct mpu3050 *mpu3050;
 int ret;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_I2C_BLOCK))
  return -EOPNOTSUPP;

 if (id)
  name = id->name;
 else
  return -ENODEV;

 regmap = devm_regmap_init_i2c(client, &mpu3050_i2c_regmap_config);
 if (IS_ERR(regmap)) {
  dev_err(&client->dev, "Failed to register i2c regmap %d\n",
   (int)PTR_ERR(regmap));
  return PTR_ERR(regmap);
 }

 ret = mpu3050_common_probe(&client->dev, regmap, client->irq, name);
 if (ret)
  return ret;


 mpu3050 = iio_priv(dev_get_drvdata(&client->dev));
 mpu3050->i2cmux = i2c_mux_alloc(client->adapter, &client->dev,
     1, 0, I2C_MUX_LOCKED | I2C_MUX_GATE,
     mpu3050_i2c_bypass_select,
     mpu3050_i2c_bypass_deselect);

 if (!mpu3050->i2cmux)
  dev_err(&client->dev, "failed to allocate I2C mux\n");
 else {
  mpu3050->i2cmux->priv = mpu3050;

  i2c_mux_add_adapter(mpu3050->i2cmux, 0, 0, 0);
 }

 return 0;
}
