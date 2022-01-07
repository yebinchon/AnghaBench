
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma8450 {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,unsigned int,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,unsigned int,int ) ;

__attribute__((used)) static int mma8450_write(struct mma8450 *m, unsigned off, u8 v)
{
 struct i2c_client *c = m->client;
 int error;

 error = i2c_smbus_write_byte_data(c, off, v);
 if (error < 0) {
  dev_err(&c->dev,
   "failed to write to register 0x%02x, error %d\n",
   off, error);
  return error;
 }

 return 0;
}
