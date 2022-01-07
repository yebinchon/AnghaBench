
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk8ba50_data {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int ) ;

__attribute__((used)) static int stk8ba50_read_accel(struct stk8ba50_data *data, u8 reg)
{
 int ret;
 struct i2c_client *client = data->client;

 ret = i2c_smbus_read_word_data(client, reg);
 if (ret < 0) {
  dev_err(&client->dev, "register read failed\n");
  return ret;
 }

 return ret;
}
