
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii9234 {int i2c_error; int dev; struct i2c_client** client; } ;
struct i2c_client {int dummy; } ;


 int dev_err (int ,char*,int ,int,int) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_write_byte (struct i2c_client*,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int * sii9234_client_name ;

__attribute__((used)) static int sii9234_writebm(struct sii9234 *ctx, int id, int offset,
      int value, int mask)
{
 int ret;
 struct i2c_client *client = ctx->client[id];

 if (ctx->i2c_error)
  return ctx->i2c_error;

 ret = i2c_smbus_write_byte(client, offset);
 if (ret < 0) {
  dev_err(ctx->dev, "writebm: %4s[0x%02x] <- 0x%02x\n",
   sii9234_client_name[id], offset, value);
  ctx->i2c_error = ret;
  return ret;
 }

 ret = i2c_smbus_read_byte(client);
 if (ret < 0) {
  dev_err(ctx->dev, "writebm: %4s[0x%02x] <- 0x%02x\n",
   sii9234_client_name[id], offset, value);
  ctx->i2c_error = ret;
  return ret;
 }

 value = (value & mask) | (ret & ~mask);

 ret = i2c_smbus_write_byte_data(client, offset, value);
 if (ret < 0) {
  dev_err(ctx->dev, "writebm: %4s[0x%02x] <- 0x%02x\n",
   sii9234_client_name[id], offset, value);
  ctx->i2c_error = ret;
 }

 return ret;
}
