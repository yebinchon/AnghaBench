
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct atmel_i2c_client_priv {int wake_token_sz; int wake_token; } ;


 int STATUS_RSP_SIZE ;
 int STATUS_SIZE ;
 int TWHI_MAX ;
 int TWHI_MIN ;
 int atmel_i2c_status (int *,int *) ;
 struct atmel_i2c_client_priv* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_master_recv (struct i2c_client*,int *,int ) ;
 int i2c_master_send (struct i2c_client*,int ,int ) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int atmel_i2c_wakeup(struct i2c_client *client)
{
 struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
 u8 status[STATUS_RSP_SIZE];
 int ret;






 i2c_master_send(client, i2c_priv->wake_token, i2c_priv->wake_token_sz);





 usleep_range(TWHI_MIN, TWHI_MAX);

 ret = i2c_master_recv(client, status, STATUS_SIZE);
 if (ret < 0)
  return ret;

 return atmel_i2c_status(&client->dev, status);
}
