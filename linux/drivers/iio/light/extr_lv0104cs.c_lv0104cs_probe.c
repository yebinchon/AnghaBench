
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lv0104cs_private {size_t calibscale; struct i2c_client* client; int int_time; int scale; int lock; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int * info; int name; int num_channels; int channels; TYPE_1__ dev; int modes; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int name; } ;
struct TYPE_4__ {int regval; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 size_t LV0104CS_CALIBSCALE_UNITY ;
 int LV0104CS_INTEG_200MS ;
 int LV0104CS_SCALE_1X ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int i2c_set_clientdata (struct i2c_client*,struct lv0104cs_private*) ;
 struct lv0104cs_private* iio_priv (struct iio_dev*) ;
 TYPE_2__* lv0104cs_calibscales ;
 int lv0104cs_channels ;
 int lv0104cs_info ;
 int lv0104cs_write_reg (struct i2c_client*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lv0104cs_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct iio_dev *indio_dev;
 struct lv0104cs_private *lv0104cs;
 int ret;

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*lv0104cs));
 if (!indio_dev)
  return -ENOMEM;

 lv0104cs = iio_priv(indio_dev);

 i2c_set_clientdata(client, lv0104cs);
 lv0104cs->client = client;

 mutex_init(&lv0104cs->lock);

 lv0104cs->calibscale = LV0104CS_CALIBSCALE_UNITY;
 lv0104cs->scale = LV0104CS_SCALE_1X;
 lv0104cs->int_time = LV0104CS_INTEG_200MS;

 ret = lv0104cs_write_reg(lv0104cs->client,
   lv0104cs_calibscales[LV0104CS_CALIBSCALE_UNITY].regval);
 if (ret)
  return ret;

 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->dev.parent = &client->dev;
 indio_dev->channels = lv0104cs_channels;
 indio_dev->num_channels = ARRAY_SIZE(lv0104cs_channels);
 indio_dev->name = client->name;
 indio_dev->info = &lv0104cs_info;

 return devm_iio_device_register(&client->dev, indio_dev);
}
