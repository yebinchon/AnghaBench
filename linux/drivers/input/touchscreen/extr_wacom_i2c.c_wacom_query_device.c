
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wacom_features {void* fw_version; void* pressure_max; void* y_max; void* x_max; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int data ;
typedef int cmd2 ;
typedef int cmd1 ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int WACOM_CMD_QUERY0 ;
 int WACOM_CMD_QUERY1 ;
 int WACOM_CMD_QUERY2 ;
 int WACOM_CMD_QUERY3 ;
 int WACOM_CMD_THROW0 ;
 int WACOM_CMD_THROW1 ;
 int WACOM_QUERY_SIZE ;
 int dev_dbg (int *,char*,void*,void*,void*,void*) ;
 void* get_unaligned_le16 (int *) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int wacom_query_device(struct i2c_client *client,
         struct wacom_features *features)
{
 int ret;
 u8 cmd1[] = { WACOM_CMD_QUERY0, WACOM_CMD_QUERY1,
   WACOM_CMD_QUERY2, WACOM_CMD_QUERY3 };
 u8 cmd2[] = { WACOM_CMD_THROW0, WACOM_CMD_THROW1 };
 u8 data[WACOM_QUERY_SIZE];
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = sizeof(cmd1),
   .buf = cmd1,
  },
  {
   .addr = client->addr,
   .flags = 0,
   .len = sizeof(cmd2),
   .buf = cmd2,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = sizeof(data),
   .buf = data,
  },
 };

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (ret < 0)
  return ret;
 if (ret != ARRAY_SIZE(msgs))
  return -EIO;

 features->x_max = get_unaligned_le16(&data[3]);
 features->y_max = get_unaligned_le16(&data[5]);
 features->pressure_max = get_unaligned_le16(&data[11]);
 features->fw_version = get_unaligned_le16(&data[13]);

 dev_dbg(&client->dev,
  "x_max:%d, y_max:%d, pressure:%d, fw:%d\n",
  features->x_max, features->y_max,
  features->pressure_max, features->fw_version);

 return 0;
}
