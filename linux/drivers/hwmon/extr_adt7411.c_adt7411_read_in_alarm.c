
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {struct i2c_client* client; } ;


 int* adt7411_in_alarm_bits ;
 int * adt7411_in_alarm_reg ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int adt7411_read_in_alarm(struct device *dev, int channel, long *val)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret;

 ret = i2c_smbus_read_byte_data(client, adt7411_in_alarm_reg[channel]);
 if (ret < 0)
  return ret;
 *val = !!(ret & adt7411_in_alarm_bits[channel]);
 return 0;
}
