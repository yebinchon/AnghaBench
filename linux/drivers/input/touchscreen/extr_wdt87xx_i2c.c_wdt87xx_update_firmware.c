
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (int *,char*,char const*,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,struct device*) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int wdt87xx_do_update_firmware (struct i2c_client*,struct firmware const*,unsigned int) ;

__attribute__((used)) static int wdt87xx_update_firmware(struct device *dev,
       const char *fw_name, unsigned int chunk_id)
{
 struct i2c_client *client = to_i2c_client(dev);
 const struct firmware *fw;
 int error;

 error = request_firmware(&fw, fw_name, dev);
 if (error) {
  dev_err(&client->dev, "unable to retrieve firmware %s: %d\n",
   fw_name, error);
  return error;
 }

 error = wdt87xx_do_update_firmware(client, fw, chunk_id);

 release_firmware(fw);

 return error ? error : 0;
}
