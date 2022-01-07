
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dev; } ;
struct firmware {int dummy; } ;


 int EINVAL ;
 int dev_err (int *,char*,int ,...) ;
 void* wdt87xx_get_fw_chunk (struct firmware const*,int ) ;
 int wdt87xx_validate_fw_chunk (void const*,int ) ;
 int wdt87xx_write_firmware (struct i2c_client*,void const*) ;

__attribute__((used)) static int wdt87xx_load_chunk(struct i2c_client *client,
         const struct firmware *fw, u32 ck_id)
{
 const void *chunk;
 int error;

 chunk = wdt87xx_get_fw_chunk(fw, ck_id);
 if (!chunk) {
  dev_err(&client->dev, "unable to locate chunk (type %d)\n",
   ck_id);
  return -EINVAL;
 }

 error = wdt87xx_validate_fw_chunk(chunk, ck_id);
 if (error) {
  dev_err(&client->dev, "invalid chunk (type %d): %d\n",
   ck_id, error);
  return error;
 }

 error = wdt87xx_write_firmware(client, chunk);
 if (error) {
  dev_err(&client->dev,
   "failed to write fw chunk (type %d): %d\n",
   ck_id, error);
  return error;
 }

 return 0;
}
