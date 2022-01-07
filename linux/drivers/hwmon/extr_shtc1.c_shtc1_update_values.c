
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int blocking_io; } ;
struct shtc1_data {scalar_t__ nonblocking_wait_time; TYPE_1__ setup; int command; } ;
struct i2c_client {int dev; } ;


 int EIO ;
 int SHTC1_CMD_LENGTH ;
 int dev_err (int *,char*,int) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_master_send (struct i2c_client*,int ,int) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static int shtc1_update_values(struct i2c_client *client,
          struct shtc1_data *data,
          char *buf, int bufsize)
{
 int ret = i2c_master_send(client, data->command, SHTC1_CMD_LENGTH);
 if (ret != SHTC1_CMD_LENGTH) {
  dev_err(&client->dev, "failed to send command: %d\n", ret);
  return ret < 0 ? ret : -EIO;
 }







 if (!data->setup.blocking_io)
  usleep_range(data->nonblocking_wait_time,
        data->nonblocking_wait_time + 1000);

 ret = i2c_master_recv(client, buf, bufsize);
 if (ret != bufsize) {
  dev_err(&client->dev, "failed to read values: %d\n", ret);
  return ret < 0 ? ret : -EIO;
 }

 return 0;
}
