
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;
struct atmel_i2c_cmd {int data; int rxsize; int msecs; scalar_t__ count; } ;
struct atmel_i2c_client_priv {int lock; } ;


 scalar_t__ WORD_ADDR_SIZE ;
 int atmel_i2c_sleep (struct i2c_client*) ;
 int atmel_i2c_status (int *,int ) ;
 int atmel_i2c_wakeup (struct i2c_client*) ;
 struct atmel_i2c_client_priv* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_master_recv (struct i2c_client*,int ,int ) ;
 int i2c_master_send (struct i2c_client*,int *,scalar_t__) ;
 int msleep (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int atmel_i2c_send_receive(struct i2c_client *client, struct atmel_i2c_cmd *cmd)
{
 struct atmel_i2c_client_priv *i2c_priv = i2c_get_clientdata(client);
 int ret;

 mutex_lock(&i2c_priv->lock);

 ret = atmel_i2c_wakeup(client);
 if (ret)
  goto err;


 ret = i2c_master_send(client, (u8 *)cmd, cmd->count + WORD_ADDR_SIZE);
 if (ret < 0)
  goto err;


 msleep(cmd->msecs);


 ret = i2c_master_recv(client, cmd->data, cmd->rxsize);
 if (ret < 0)
  goto err;


 ret = atmel_i2c_sleep(client);
 if (ret < 0)
  goto err;

 mutex_unlock(&i2c_priv->lock);
 return atmel_i2c_status(&client->dev, cmd->data);
err:
 mutex_unlock(&i2c_priv->lock);
 return ret;
}
