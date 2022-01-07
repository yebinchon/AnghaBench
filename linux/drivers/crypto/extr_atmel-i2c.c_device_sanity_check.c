
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct atmel_i2c_cmd {scalar_t__* data; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 size_t LOCK_CONFIG_IDX ;
 size_t LOCK_VALUE_IDX ;
 int atmel_i2c_init_read_cmd (struct atmel_i2c_cmd*) ;
 int atmel_i2c_send_receive (struct i2c_client*,struct atmel_i2c_cmd*) ;
 int dev_err (int *,char*) ;
 int kfree (struct atmel_i2c_cmd*) ;
 struct atmel_i2c_cmd* kmalloc (int,int ) ;

__attribute__((used)) static int device_sanity_check(struct i2c_client *client)
{
 struct atmel_i2c_cmd *cmd;
 int ret;

 cmd = kmalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 atmel_i2c_init_read_cmd(cmd);

 ret = atmel_i2c_send_receive(client, cmd);
 if (ret)
  goto free_cmd;







 if (cmd->data[LOCK_CONFIG_IDX] || cmd->data[LOCK_VALUE_IDX]) {
  dev_err(&client->dev, "Configuration or Data and OTP zones are unlocked!\n");
  ret = -ENOTSUPP;
 }


free_cmd:
 kfree(cmd);
 return ret;
}
