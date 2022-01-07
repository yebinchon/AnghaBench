
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht3x_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;


 struct sht3x_data* dev_get_drvdata (struct device*) ;
 int sht3x_cmd_read_status_reg ;
 int sht3x_read_from_command (struct i2c_client*,struct sht3x_data*,int ,char*,int,int ) ;

__attribute__((used)) static int status_register_read(struct device *dev,
    struct device_attribute *attr,
    char *buffer, int length)
{
 int ret;
 struct sht3x_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;

 ret = sht3x_read_from_command(client, data, sht3x_cmd_read_status_reg,
          buffer, length, 0);

 return ret;
}
