
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
struct blinkm_data {int update_lock; int * args; int i2c_addr; int blue; int green; int red; int script_startline; int script_repeats; int script_id; int next_brightness; int brightness; int next_saturation; int saturation; int next_hue; int hue; int next_blue; int next_green; int next_red; } ;
 int EAGAIN ;
 int EINVAL ;
 int blinkm_read (struct i2c_client*,int,int *) ;
 int blinkm_write (struct i2c_client*,int,int *) ;
 int dev_err (int *,char*,int) ;
 struct blinkm_data* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int blinkm_transfer_hw(struct i2c_client *client, int cmd)
{
 struct blinkm_data *data = i2c_get_clientdata(client);



 if (mutex_lock_interruptible(&data->update_lock) < 0)
  return -EAGAIN;


 switch (cmd) {
 case 142:
 case 137:
 case 141:
  data->args[0] = data->next_red;
  data->args[1] = data->next_green;
  data->args[2] = data->next_blue;
  blinkm_write(client, cmd, data->args);
  data->red = data->args[0];
  data->green = data->args[1];
  data->blue = data->args[2];
  break;
 case 144:
 case 143:
  data->args[0] = data->next_hue;
  data->args[1] = data->next_saturation;
  data->args[2] = data->next_brightness;
  blinkm_write(client, cmd, data->args);
  data->hue = data->next_hue;
  data->saturation = data->next_saturation;
  data->brightness = data->next_brightness;
  break;
 case 136:
  data->args[0] = data->script_id;
  data->args[1] = data->script_repeats;
  data->args[2] = data->script_startline;
  blinkm_write(client, cmd, data->args);
  break;
 case 129:
  blinkm_write(client, cmd, ((void*)0));
  break;
 case 139:
  data->args[0] = data->red;
  data->args[1] = data->green;
  data->args[2] = data->blue;
  blinkm_write(client, cmd, ((void*)0));
  blinkm_read(client, cmd, data->args);
  data->red = data->args[0];
  data->green = data->args[1];
  data->blue = data->args[2];
  break;
 case 140:
  data->args[0] = data->i2c_addr;
  blinkm_write(client, cmd, ((void*)0));
  blinkm_read(client, cmd, data->args);
  data->i2c_addr = data->args[0];
  break;
 case 130:
 case 133:
 case 135:
 case 128:
 case 132:
 case 134:
 case 138:
 case 131:
  dev_err(&client->dev,
    "BlinkM: cmd %d not implemented yet.\n", cmd);
  break;
 default:
  dev_err(&client->dev, "BlinkM: unknown command %d\n", cmd);
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }


 mutex_unlock(&data->update_lock);
 return 0;
}
