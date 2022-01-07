
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mn88472_dev {int i2c_write_max; int ts_mode; int ts_clk; int active; int * regmap; } ;
struct i2c_client {int dev; } ;
struct firmware {int size; int * data; } ;
struct dvb_frontend {struct i2c_client* demodulator_priv; } ;


 int EINVAL ;

 char* MN88472_FIRMWARE ;



 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char const*) ;
 struct mn88472_dev* i2c_get_clientdata (struct i2c_client*) ;
 int min (int,int) ;
 int regmap_bulk_write (int ,int,int *,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,unsigned int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int mn88472_init(struct dvb_frontend *fe)
{
 struct i2c_client *client = fe->demodulator_priv;
 struct mn88472_dev *dev = i2c_get_clientdata(client);
 int ret, len, rem;
 unsigned int utmp;
 const struct firmware *firmware;
 const char *name = MN88472_FIRMWARE;

 dev_dbg(&client->dev, "\n");


 ret = regmap_write(dev->regmap[2], 0x05, 0x00);
 if (ret)
  goto err;
 ret = regmap_write(dev->regmap[2], 0x0b, 0x00);
 if (ret)
  goto err;
 ret = regmap_write(dev->regmap[2], 0x0c, 0x00);
 if (ret)
  goto err;


 ret = regmap_read(dev->regmap[0], 0xf5, &utmp);
 if (ret)
  goto err;
 if (!(utmp & 0x01))
  goto warm;

 ret = request_firmware(&firmware, name, &client->dev);
 if (ret) {
  dev_err(&client->dev, "firmware file '%s' not found\n", name);
  goto err;
 }

 dev_info(&client->dev, "downloading firmware from file '%s'\n", name);

 ret = regmap_write(dev->regmap[0], 0xf5, 0x03);
 if (ret)
  goto err_release_firmware;

 for (rem = firmware->size; rem > 0; rem -= (dev->i2c_write_max - 1)) {
  len = min(dev->i2c_write_max - 1, rem);
  ret = regmap_bulk_write(dev->regmap[0], 0xf6,
     &firmware->data[firmware->size - rem],
     len);
  if (ret) {
   dev_err(&client->dev, "firmware download failed %d\n",
    ret);
   goto err_release_firmware;
  }
 }


 ret = regmap_read(dev->regmap[0], 0xf8, &utmp);
 if (ret)
  goto err_release_firmware;
 if (utmp & 0x10) {
  ret = -EINVAL;
  dev_err(&client->dev, "firmware did not run\n");
  goto err_release_firmware;
 }

 ret = regmap_write(dev->regmap[0], 0xf5, 0x00);
 if (ret)
  goto err_release_firmware;

 release_firmware(firmware);
warm:

 switch (dev->ts_mode) {
 case 129:
  utmp = 0x1d;
  break;
 case 130:
  utmp = 0x00;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }
 ret = regmap_write(dev->regmap[2], 0x08, utmp);
 if (ret)
  goto err;

 switch (dev->ts_clk) {
 case 128:
  utmp = 0xe3;
  break;
 case 131:
  utmp = 0xe1;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }
 ret = regmap_write(dev->regmap[0], 0xd9, utmp);
 if (ret)
  goto err;

 dev->active = 1;

 return 0;
err_release_firmware:
 release_firmware(firmware);
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
