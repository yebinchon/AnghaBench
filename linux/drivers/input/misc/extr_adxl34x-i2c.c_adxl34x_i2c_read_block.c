
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int EIO ;
 int i2c_master_recv (struct i2c_client*,void*,int) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int adxl34x_i2c_read_block(struct device *dev,
      unsigned char reg, int count,
      void *buf)
{
 struct i2c_client *client = to_i2c_client(dev);
 int ret;

 ret = i2c_master_send(client, &reg, 1);
 if (ret < 0)
  return ret;

 ret = i2c_master_recv(client, buf, count);
 if (ret < 0)
  return ret;

 if (ret != count)
  return -EIO;

 return 0;
}
