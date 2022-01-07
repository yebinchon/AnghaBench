
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma9551_version_info {int * fw_version; int device_id; } ;
struct i2c_client {int dev; } ;
typedef int info ;


 int MMA9551_APPID_VERSION ;
 int be32_to_cpu (int ) ;
 int dev_info (int *,char*,int ,int ,int ) ;
 int mma9551_transfer (struct i2c_client*,int ,int,int,int *,int ,int *,int) ;

int mma9551_read_version(struct i2c_client *client)
{
 struct mma9551_version_info info;
 int ret;

 ret = mma9551_transfer(client, MMA9551_APPID_VERSION, 0x00, 0x00,
          ((void*)0), 0, (u8 *)&info, sizeof(info));
 if (ret < 0)
  return ret;

 dev_info(&client->dev, "device ID 0x%x, firmware version %02x.%02x\n",
   be32_to_cpu(info.device_id), info.fw_version[0],
   info.fw_version[1]);

 return 0;
}
