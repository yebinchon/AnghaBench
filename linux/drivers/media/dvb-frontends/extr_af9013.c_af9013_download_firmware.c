
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;
struct firmware {int size; int* data; } ;
struct af9013_state {int regmap; struct i2c_client* client; } ;
struct TYPE_3__ {char const* name; } ;
struct TYPE_4__ {TYPE_1__ info; } ;


 char* AF9013_FIRMWARE ;
 int ENODEV ;
 scalar_t__ LEN_MAX ;
 TYPE_2__ af9013_ops ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,char const*,...) ;
 int min (scalar_t__,int) ;
 int regmap_bulk_write (int ,int,int*,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_read_poll_timeout (int ,int,unsigned int,int,int,int) ;
 int regmap_write (int ,int,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,int *) ;

__attribute__((used)) static int af9013_download_firmware(struct af9013_state *state)
{
 struct i2c_client *client = state->client;
 int ret, i, len, rem;
 unsigned int utmp;
 u8 buf[4];
 u16 checksum = 0;
 const struct firmware *firmware;
 const char *name = AF9013_FIRMWARE;

 dev_dbg(&client->dev, "\n");


 ret = regmap_read(state->regmap, 0x98be, &utmp);
 if (ret)
  goto err;

 dev_dbg(&client->dev, "firmware status %02x\n", utmp);

 if (utmp == 0x0c)
  return 0;

 dev_info(&client->dev, "found a '%s' in cold state, will try to load a firmware\n",
   af9013_ops.info.name);


 ret = request_firmware(&firmware, name, &client->dev);
 if (ret) {
  dev_info(&client->dev, "firmware file '%s' not found %d\n",
    name, ret);
  goto err;
 }

 dev_info(&client->dev, "downloading firmware from file '%s'\n",
   name);


 for (i = 0; i < firmware->size; i++)
  checksum += firmware->data[i];

 buf[0] = (checksum >> 8) & 0xff;
 buf[1] = (checksum >> 0) & 0xff;
 buf[2] = (firmware->size >> 8) & 0xff;
 buf[3] = (firmware->size >> 0) & 0xff;
 ret = regmap_bulk_write(state->regmap, 0x50fc, buf, 4);
 if (ret)
  goto err_release_firmware;



 for (rem = firmware->size; rem > 0; rem -= 16) {
  len = min(16, rem);
  ret = regmap_bulk_write(state->regmap,
     0x5100 + firmware->size - rem,
     &firmware->data[firmware->size - rem],
     len);
  if (ret) {
   dev_err(&client->dev, "firmware download failed %d\n",
    ret);
   goto err_release_firmware;
  }
 }

 release_firmware(firmware);


 ret = regmap_write(state->regmap, 0xe205, 0x01);
 if (ret)
  goto err;


 ret = regmap_read_poll_timeout(state->regmap, 0x98be, utmp,
           (utmp == 0x0c || utmp == 0x04),
           5000, 1000000);
 if (ret)
  goto err;

 dev_dbg(&client->dev, "firmware status %02x\n", utmp);

 if (utmp == 0x04) {
  ret = -ENODEV;
  dev_err(&client->dev, "firmware did not run\n");
  goto err;
 } else if (utmp != 0x0c) {
  ret = -ENODEV;
  dev_err(&client->dev, "firmware boot timeout\n");
  goto err;
 }

 dev_info(&client->dev, "found a '%s' in warm state\n",
   af9013_ops.info.name);

 return 0;
err_release_firmware:
 release_firmware(firmware);
err:
 dev_dbg(&client->dev, "failed %d\n", ret);
 return ret;
}
