
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8450 {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,unsigned int,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,unsigned int) ;

__attribute__((used)) static int mma8450_read(struct mma8450 *m, unsigned off)
{
 struct i2c_client *c = m->client;
 int ret;

 ret = i2c_smbus_read_byte_data(c, off);
 if (ret < 0)
  dev_err(&c->dev,
   "failed to read register 0x%02x, error %d\n",
   off, ret);

 return ret;
}
