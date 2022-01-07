
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb1232_data {scalar_t__ irqnr; int lock; int ranging; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
typedef int s16 ;
typedef int buf ;
typedef int __be16 ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 int MB1232_RANGE_COMMAND ;
 int __be16_to_cpu (int ) ;
 int dev_err (int *,char*,int) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int wait_for_completion_killable_timeout (int *,int) ;

__attribute__((used)) static s16 mb1232_read_distance(struct mb1232_data *data)
{
 struct i2c_client *client = data->client;
 int ret;
 s16 distance;
 __be16 buf;

 mutex_lock(&data->lock);

 reinit_completion(&data->ranging);

 ret = i2c_smbus_write_byte(client, MB1232_RANGE_COMMAND);
 if (ret < 0) {
  dev_err(&client->dev, "write command - err: %d\n", ret);
  goto error_unlock;
 }

 if (data->irqnr >= 0) {

  ret = wait_for_completion_killable_timeout(&data->ranging,
         HZ/10);
  if (ret < 0)
   goto error_unlock;
  else if (ret == 0) {
   ret = -ETIMEDOUT;
   goto error_unlock;
  }
 } else {

  msleep(15);
 }

 ret = i2c_master_recv(client, (char *)&buf, sizeof(buf));
 if (ret < 0) {
  dev_err(&client->dev, "i2c_master_recv: ret=%d\n", ret);
  goto error_unlock;
 }

 distance = __be16_to_cpu(buf);

 if (distance < 0) {
  dev_err(&client->dev, "distance=%d\n", distance);
  ret = -EINVAL;
  goto error_unlock;
 }

 mutex_unlock(&data->lock);

 return distance;

error_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
