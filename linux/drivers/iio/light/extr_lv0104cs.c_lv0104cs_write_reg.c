
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef int regval ;


 int EIO ;
 int i2c_master_send (struct i2c_client*,char*,int) ;

__attribute__((used)) static int lv0104cs_write_reg(struct i2c_client *client, u8 regval)
{
 int ret;

 ret = i2c_master_send(client, (char *)&regval, sizeof(regval));
 if (ret < 0)
  return ret;
 if (ret != sizeof(regval))
  return -EIO;

 return 0;
}
