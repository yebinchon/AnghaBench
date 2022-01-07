
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct vcnl4000_data {int vcnl4000_lock; TYPE_1__* client; } ;
typedef int buf ;
typedef int __be16 ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int VCNL4000_COMMAND ;
 int be16_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_read_i2c_block_data (TYPE_1__*,int,int,int*) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int vcnl4000_measure(struct vcnl4000_data *data, u8 req_mask,
    u8 rdy_mask, u8 data_reg, int *val)
{
 int tries = 20;
 __be16 buf;
 int ret;

 mutex_lock(&data->vcnl4000_lock);

 ret = i2c_smbus_write_byte_data(data->client, VCNL4000_COMMAND,
     req_mask);
 if (ret < 0)
  goto fail;


 while (tries--) {
  ret = i2c_smbus_read_byte_data(data->client, VCNL4000_COMMAND);
  if (ret < 0)
   goto fail;
  if (ret & rdy_mask)
   break;
  msleep(20);
 }

 if (tries < 0) {
  dev_err(&data->client->dev,
   "vcnl4000_measure() failed, data not ready\n");
  ret = -EIO;
  goto fail;
 }

 ret = i2c_smbus_read_i2c_block_data(data->client,
  data_reg, sizeof(buf), (u8 *) &buf);
 if (ret < 0)
  goto fail;

 mutex_unlock(&data->vcnl4000_lock);
 *val = be16_to_cpu(buf);

 return 0;

fail:
 mutex_unlock(&data->vcnl4000_lock);
 return ret;
}
