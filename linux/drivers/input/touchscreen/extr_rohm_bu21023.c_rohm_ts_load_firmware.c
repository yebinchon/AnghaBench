
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct firmware {unsigned int size; int * data; } ;
typedef int s32 ;


 int CALIBRATION_DONE ;
 int COMMON_SETUP1 ;
 int COMMON_SETUP1_DEFAULT ;
 int COORD_UPDATE ;
 int EIO ;
 int EX_ADDR_H ;
 int EX_ADDR_L ;
 int EX_WDAT ;
 int FIRMWARE_BLOCK_SIZE ;
 unsigned int FIRMWARE_RETRY_MAX ;
 int INT_ALL ;
 int INT_CLEAR ;
 int INT_MASK ;
 int INT_STATUS ;
 int PROGRAM_LOAD_DONE ;
 int SLEEP_IN ;
 int SLEEP_OUT ;
 int dev_err (struct device*,char*,char const*,int) ;
 int dev_warn (struct device*,char*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,int ,unsigned int,int *) ;
 unsigned int min (int ,unsigned int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,struct device*) ;

__attribute__((used)) static int rohm_ts_load_firmware(struct i2c_client *client,
     const char *firmware_name)
{
 struct device *dev = &client->dev;
 const struct firmware *fw;
 s32 status;
 unsigned int offset, len, xfer_len;
 unsigned int retry = 0;
 int error, error2;

 error = request_firmware(&fw, firmware_name, dev);
 if (error) {
  dev_err(dev, "unable to retrieve firmware %s: %d\n",
   firmware_name, error);
  return error;
 }

 error = i2c_smbus_write_byte_data(client, INT_MASK,
       COORD_UPDATE | CALIBRATION_DONE |
       SLEEP_IN | SLEEP_OUT);
 if (error)
  goto out;

 do {
  if (retry) {
   dev_warn(dev, "retrying firmware load\n");


   error = i2c_smbus_write_byte_data(client, EX_WDAT, 0);
   if (error)
    goto out;
  }

  error = i2c_smbus_write_byte_data(client, EX_ADDR_H, 0);
  if (error)
   goto out;

  error = i2c_smbus_write_byte_data(client, EX_ADDR_L, 0);
  if (error)
   goto out;

  error = i2c_smbus_write_byte_data(client, COMMON_SETUP1,
        COMMON_SETUP1_DEFAULT);
  if (error)
   goto out;


  offset = 0;
  len = fw->size;

  while (len) {
   xfer_len = min(FIRMWARE_BLOCK_SIZE, len);

   error = i2c_smbus_write_i2c_block_data(client, EX_WDAT,
      xfer_len, &fw->data[offset]);
   if (error)
    goto out;

   len -= xfer_len;
   offset += xfer_len;
  }


  status = i2c_smbus_read_byte_data(client, INT_STATUS);
  if (status < 0) {
   error = status;
   goto out;
  }


  error = i2c_smbus_write_byte_data(client, INT_CLEAR, 0xff);
  if (error)
   goto out;

  if (status == PROGRAM_LOAD_DONE)
   break;

  error = -EIO;
 } while (++retry <= FIRMWARE_RETRY_MAX);

out:
 error2 = i2c_smbus_write_byte_data(client, INT_MASK, INT_ALL);

 release_firmware(fw);

 return error ? error : error2;
}
