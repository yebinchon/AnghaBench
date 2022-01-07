
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct isl29501_register_desc {scalar_t__ lsb; scalar_t__ msb; } ;
struct isl29501_private {int lock; int client; } ;
typedef scalar_t__ s32 ;
typedef enum isl29501_register_name { ____Placeholder_isl29501_register_name } isl29501_register_name ;


 scalar_t__ i2c_smbus_read_byte_data (int ,scalar_t__) ;
 struct isl29501_register_desc* isl29501_registers ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int isl29501_register_read(struct isl29501_private *isl29501,
      enum isl29501_register_name name,
      u32 *val)
{
 const struct isl29501_register_desc *reg = &isl29501_registers[name];
 u8 msb = 0, lsb = 0;
 s32 ret;

 mutex_lock(&isl29501->lock);
 if (reg->msb) {
  ret = i2c_smbus_read_byte_data(isl29501->client, reg->msb);
  if (ret < 0)
   goto err;
  msb = ret;
 }

 if (reg->lsb) {
  ret = i2c_smbus_read_byte_data(isl29501->client, reg->lsb);
  if (ret < 0)
   goto err;
  lsb = ret;
 }
 mutex_unlock(&isl29501->lock);

 *val = (msb << 8) + lsb;

 return 0;
err:
 mutex_unlock(&isl29501->lock);

 return ret;
}
