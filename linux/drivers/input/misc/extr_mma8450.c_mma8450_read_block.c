
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma8450 {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int MMA8450_OUT_X_LSB ;
 int dev_err (int *,char*,int ,int) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,unsigned int,size_t,int *) ;

__attribute__((used)) static int mma8450_read_block(struct mma8450 *m, unsigned off,
         u8 *buf, size_t size)
{
 struct i2c_client *c = m->client;
 int err;

 err = i2c_smbus_read_i2c_block_data(c, off, size, buf);
 if (err < 0) {
  dev_err(&c->dev,
   "failed to read block data at 0x%02x, error %d\n",
   MMA8450_OUT_X_LSB, err);
  return err;
 }

 return 0;
}
