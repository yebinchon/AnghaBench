
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct mn88473_dev {int i2c_wr_max; int active; int * regmap; } ;
struct i2c_client {int dev; } ;
struct firmware {int size; int * data; } ;
struct TYPE_15__ {int len; TYPE_11__* stat; } ;
struct TYPE_13__ {int len; TYPE_9__* stat; } ;
struct TYPE_23__ {int len; TYPE_7__* stat; } ;
struct TYPE_21__ {int len; TYPE_5__* stat; } ;
struct TYPE_19__ {int len; TYPE_3__* stat; } ;
struct TYPE_17__ {int len; TYPE_1__* stat; } ;
struct dtv_frontend_properties {TYPE_12__ block_count; TYPE_10__ block_error; TYPE_8__ post_bit_count; TYPE_6__ post_bit_error; TYPE_4__ cnr; TYPE_2__ strength; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct i2c_client* demodulator_priv; } ;
struct TYPE_24__ {void* scale; } ;
struct TYPE_22__ {void* scale; } ;
struct TYPE_20__ {void* scale; } ;
struct TYPE_18__ {void* scale; } ;
struct TYPE_16__ {void* scale; } ;
struct TYPE_14__ {void* scale; } ;


 int EINVAL ;
 void* FE_SCALE_NOT_AVAILABLE ;
 char* MN88473_FIRMWARE ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char const*) ;
 struct mn88473_dev* i2c_get_clientdata (struct i2c_client*) ;
 int min (int,int) ;
 int regmap_bulk_write (int ,int,int *,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int mn88473_init(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->demodulator_priv;
 struct mn88473_dev *dev = i2c_get_clientdata(client);
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 int ret, len, remain;
 unsigned int uitmp;
 const struct firmware *fw;
 const char *name = MN88473_FIRMWARE;

 dev_dbg(&client->dev, "\n");


 ret = regmap_read(dev->regmap[0], 0xf5, &uitmp);
 if (ret)
  goto err;

 if (!(uitmp & 0x01))
  goto warm;


 ret = request_firmware(&fw, name, &client->dev);
 if (ret) {
  dev_err(&client->dev, "firmware file '%s' not found\n", name);
  goto err;
 }

 dev_info(&client->dev, "downloading firmware from file '%s'\n", name);

 ret = regmap_write(dev->regmap[0], 0xf5, 0x03);
 if (ret)
  goto err_release_firmware;

 for (remain = fw->size; remain > 0; remain -= (dev->i2c_wr_max - 1)) {
  len = min(dev->i2c_wr_max - 1, remain);
  ret = regmap_bulk_write(dev->regmap[0], 0xf6,
     &fw->data[fw->size - remain], len);
  if (ret) {
   dev_err(&client->dev, "firmware download failed %d\n",
    ret);
   goto err_release_firmware;
  }
 }

 release_firmware(fw);


 ret = regmap_read(dev->regmap[0], 0xf8, &uitmp);
 if (ret)
  goto err;

 if (uitmp & 0x10) {
  dev_err(&client->dev, "firmware parity check failed\n");
  ret = -EINVAL;
  goto err;
 }

 ret = regmap_write(dev->regmap[0], 0xf5, 0x00);
 if (ret)
  goto err;
warm:

 ret = regmap_write(dev->regmap[2], 0x09, 0x08);
 if (ret)
  goto err;
 ret = regmap_write(dev->regmap[2], 0x08, 0x1d);
 if (ret)
  goto err;

 dev->active = 1;


 c->strength.len = 1;
 c->strength.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->cnr.len = 1;
 c->cnr.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->post_bit_error.len = 1;
 c->post_bit_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->post_bit_count.len = 1;
 c->post_bit_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->block_error.len = 1;
 c->block_error.stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 c->block_count.len = 1;
 c->block_count.stat[0].scale = FE_SCALE_NOT_AVAILABLE;

 return 0;
err_release_firmware:
 release_firmware(fw);
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
