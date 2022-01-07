
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {char command_waiting; int command_result; int command_mutex; int command_done; int access_mutex; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int EBUSY ;
 int ETIME ;
 int WAIT_TIMEOUT ;
 int dev_dbg (int *,char*,char const,...) ;
 int dev_err (int *,char*,...) ;
 int i2c_master_send (struct i2c_client*,char const*,int) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int zforce_send_wait(struct zforce_ts *ts, const char *buf, int len)
{
 struct i2c_client *client = ts->client;
 int ret;

 ret = mutex_trylock(&ts->command_mutex);
 if (!ret) {
  dev_err(&client->dev, "already waiting for a command\n");
  return -EBUSY;
 }

 dev_dbg(&client->dev, "sending %d bytes for command 0x%x\n",
  buf[1], buf[2]);

 ts->command_waiting = buf[2];

 mutex_lock(&ts->access_mutex);
 ret = i2c_master_send(client, buf, len);
 mutex_unlock(&ts->access_mutex);
 if (ret < 0) {
  dev_err(&client->dev, "i2c send data request error: %d\n", ret);
  goto unlock;
 }

 dev_dbg(&client->dev, "waiting for result for command 0x%x\n", buf[2]);

 if (wait_for_completion_timeout(&ts->command_done, WAIT_TIMEOUT) == 0) {
  ret = -ETIME;
  goto unlock;
 }

 ret = ts->command_result;

unlock:
 mutex_unlock(&ts->command_mutex);
 return ret;
}
