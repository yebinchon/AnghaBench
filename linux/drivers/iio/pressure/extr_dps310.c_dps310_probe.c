
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; } ;
struct dps310_data {int regmap; int lock; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int DPS310_BACKGROUND ;
 int DPS310_CFG_REG ;
 int DPS310_COEF_RDY ;
 int DPS310_MEAS_CFG ;
 int DPS310_MEAS_CTRL_BITS ;
 int DPS310_PRS_CFG ;
 int DPS310_PRS_EN ;
 int DPS310_PRS_SHIFT_EN ;
 int DPS310_TEMP_EN ;
 int DPS310_TMP_CFG ;
 int DPS310_TMP_EXT ;
 int DPS310_TMP_SHIFT_EN ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_add_action_or_reset (int *,int ,struct dps310_data*) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int dps310_channels ;
 int dps310_get_coefs (struct dps310_data*) ;
 int dps310_info ;
 int dps310_regmap_config ;
 int dps310_reset ;
 int dps310_temp_workaround (struct dps310_data*) ;
 int i2c_set_clientdata (struct i2c_client*,struct iio_dev*) ;
 struct dps310_data* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;
 int regmap_write (int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int,int) ;

__attribute__((used)) static int dps310_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct dps310_data *data;
 struct iio_dev *iio;
 int rc, ready;

 iio = devm_iio_device_alloc(&client->dev, sizeof(*data));
 if (!iio)
  return -ENOMEM;

 data = iio_priv(iio);
 data->client = client;
 mutex_init(&data->lock);

 iio->dev.parent = &client->dev;
 iio->name = id->name;
 iio->channels = dps310_channels;
 iio->num_channels = ARRAY_SIZE(dps310_channels);
 iio->info = &dps310_info;
 iio->modes = INDIO_DIRECT_MODE;

 data->regmap = devm_regmap_init_i2c(client, &dps310_regmap_config);
 if (IS_ERR(data->regmap))
  return PTR_ERR(data->regmap);


 rc = devm_add_action_or_reset(&client->dev, dps310_reset, data);
 if (rc)
  return rc;





 rc = regmap_write(data->regmap, DPS310_PRS_CFG, 0);





 rc = regmap_write(data->regmap, DPS310_TMP_CFG, DPS310_TMP_EXT);
 if (rc < 0)
  return rc;


 rc = regmap_write_bits(data->regmap, DPS310_CFG_REG,
          DPS310_PRS_SHIFT_EN | DPS310_TMP_SHIFT_EN, 0);
 if (rc < 0)
  return rc;


 rc = regmap_write_bits(data->regmap, DPS310_MEAS_CFG,
          DPS310_MEAS_CTRL_BITS, 0);
 if (rc < 0)
  return rc;


 rc = regmap_write_bits(data->regmap, DPS310_MEAS_CFG,
          DPS310_MEAS_CTRL_BITS, DPS310_PRS_EN |
          DPS310_TEMP_EN | DPS310_BACKGROUND);
 if (rc < 0)
  return rc;





 rc = regmap_read_poll_timeout(data->regmap, DPS310_MEAS_CFG, ready,
          ready & DPS310_COEF_RDY, 10000, 40000);
 if (rc < 0)
  return rc;

 rc = dps310_get_coefs(data);
 if (rc < 0)
  return rc;

 rc = dps310_temp_workaround(data);
 if (rc < 0)
  return rc;

 rc = devm_iio_device_register(&client->dev, iio);
 if (rc)
  return rc;

 i2c_set_clientdata(client, iio);

 return 0;
}
