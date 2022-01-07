
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zforce_ts {int access_mutex; struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int EIO ;
 int FRAME_START ;
 size_t PAYLOAD_BODY ;
 size_t PAYLOAD_HEADER ;
 size_t PAYLOAD_LENGTH ;
 int dev_dbg (int *,char*,int,int) ;
 int dev_err (int *,char*,int) ;
 int i2c_master_recv (struct i2c_client*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zforce_read_packet(struct zforce_ts *ts, u8 *buf)
{
 struct i2c_client *client = ts->client;
 int ret;

 mutex_lock(&ts->access_mutex);


 ret = i2c_master_recv(client, buf, 2);
 if (ret < 0) {
  dev_err(&client->dev, "error reading header: %d\n", ret);
  goto unlock;
 }

 if (buf[PAYLOAD_HEADER] != FRAME_START) {
  dev_err(&client->dev, "invalid frame start: %d\n", buf[0]);
  ret = -EIO;
  goto unlock;
 }

 if (buf[PAYLOAD_LENGTH] == 0) {
  dev_err(&client->dev, "invalid payload length: %d\n",
   buf[PAYLOAD_LENGTH]);
  ret = -EIO;
  goto unlock;
 }


 ret = i2c_master_recv(client, &buf[PAYLOAD_BODY], buf[PAYLOAD_LENGTH]);
 if (ret < 0) {
  dev_err(&client->dev, "error reading payload: %d\n", ret);
  goto unlock;
 }

 dev_dbg(&client->dev, "read %d bytes for response command 0x%x\n",
  buf[PAYLOAD_LENGTH], buf[PAYLOAD_BODY]);

unlock:
 mutex_unlock(&ts->access_mutex);
 return ret;
}
