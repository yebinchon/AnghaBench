
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2485_data {int time_prev; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef scalar_t__ __be32 ;


 int be32_to_cpu (scalar_t__) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int ktime_get () ;
 int ltc2485_wait_conv (struct ltc2485_data*) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int ltc2485_read(struct ltc2485_data *data, int *val)
{
 struct i2c_client *client = data->client;
 __be32 buf = 0;
 int ret;

 ltc2485_wait_conv(data);

 ret = i2c_master_recv(client, (char *)&buf, 4);
 if (ret < 0) {
  dev_err(&client->dev, "i2c_master_recv failed\n");
  return ret;
 }
 data->time_prev = ktime_get();
 *val = sign_extend32(be32_to_cpu(buf) >> 6, 24);

 return ret;
}
