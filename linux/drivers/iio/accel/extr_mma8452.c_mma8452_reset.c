
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int MMA8452_CTRL_REG2 ;
 int MMA8452_CTRL_REG2_RST ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mma8452_reset(struct i2c_client *client)
{
 int i;
 int ret;

 ret = i2c_smbus_write_byte_data(client, MMA8452_CTRL_REG2,
     MMA8452_CTRL_REG2_RST);
 if (ret < 0)
  return ret;

 for (i = 0; i < 10; i++) {
  usleep_range(100, 200);
  ret = i2c_smbus_read_byte_data(client, MMA8452_CTRL_REG2);
  if (ret == -EIO)
   continue;
  if (ret < 0)
   return ret;
  if (!(ret & MMA8452_CTRL_REG2_RST))
   return 0;
 }

 return -ETIMEDOUT;
}
