
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct silead_ts_data {int fw_name; } ;
struct silead_fw_data {int val; int offset; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct firmware {int size; scalar_t__ data; } ;


 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct silead_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,struct device*) ;

__attribute__((used)) static int silead_ts_load_fw(struct i2c_client *client)
{
 struct device *dev = &client->dev;
 struct silead_ts_data *data = i2c_get_clientdata(client);
 unsigned int fw_size, i;
 const struct firmware *fw;
 struct silead_fw_data *fw_data;
 int error;

 dev_dbg(dev, "Firmware file name: %s", data->fw_name);

 error = request_firmware(&fw, data->fw_name, dev);
 if (error) {
  dev_err(dev, "Firmware request error %d\n", error);
  return error;
 }

 fw_size = fw->size / sizeof(*fw_data);
 fw_data = (struct silead_fw_data *)fw->data;

 for (i = 0; i < fw_size; i++) {
  error = i2c_smbus_write_i2c_block_data(client,
             fw_data[i].offset,
             4,
             (u8 *)&fw_data[i].val);
  if (error) {
   dev_err(dev, "Firmware load error %d\n", error);
   break;
  }
 }

 release_firmware(fw);
 return error ?: 0;
}
