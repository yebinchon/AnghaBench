
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iqs5xx_private {int input; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int IQS5XX_FW_FILE_LEN ;
 int dev_err (int *,char*,int) ;
 struct iqs5xx_private* dev_get_drvdata (struct device*) ;
 int input_register_device (int ) ;
 int iqs5xx_fw_file_write (struct i2c_client*,char*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static ssize_t fw_file_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct iqs5xx_private *iqs5xx = dev_get_drvdata(dev);
 struct i2c_client *client = iqs5xx->client;
 size_t len = count;
 bool input_reg = !iqs5xx->input;
 char fw_file[IQS5XX_FW_FILE_LEN + 1];
 int error;

 if (!len)
  return -EINVAL;

 if (buf[len - 1] == '\n')
  len--;

 if (len > IQS5XX_FW_FILE_LEN)
  return -ENAMETOOLONG;

 memcpy(fw_file, buf, len);
 fw_file[len] = '\0';

 error = iqs5xx_fw_file_write(client, fw_file);
 if (error)
  return error;





 if (input_reg) {
  error = input_register_device(iqs5xx->input);
  if (error) {
   dev_err(&client->dev,
    "Failed to register device: %d\n",
    error);
   return error;
  }
 }

 return count;
}
