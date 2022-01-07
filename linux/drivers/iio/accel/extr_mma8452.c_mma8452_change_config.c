
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma8452_data {int lock; int client; } ;


 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int mma8452_active (struct mma8452_data*) ;
 int mma8452_is_active (struct mma8452_data*) ;
 int mma8452_standby (struct mma8452_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mma8452_change_config(struct mma8452_data *data, u8 reg, u8 val)
{
 int ret;
 int is_active;

 mutex_lock(&data->lock);

 is_active = mma8452_is_active(data);
 if (is_active < 0) {
  ret = is_active;
  goto fail;
 }


 if (is_active > 0) {
  ret = mma8452_standby(data);
  if (ret < 0)
   goto fail;
 }

 ret = i2c_smbus_write_byte_data(data->client, reg, val);
 if (ret < 0)
  goto fail;

 if (is_active > 0) {
  ret = mma8452_active(data);
  if (ret < 0)
   goto fail;
 }

 ret = 0;
fail:
 mutex_unlock(&data->lock);

 return ret;
}
