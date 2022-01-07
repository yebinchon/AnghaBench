
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mma8452_data {int client; } ;
typedef int __be16 ;


 int MMA8452_OUT_X ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;
 int mma8452_drdy (struct mma8452_data*) ;
 int mma8452_set_runtime_pm_state (int ,int) ;

__attribute__((used)) static int mma8452_read(struct mma8452_data *data, __be16 buf[3])
{
 int ret = mma8452_drdy(data);

 if (ret < 0)
  return ret;

 ret = mma8452_set_runtime_pm_state(data->client, 1);
 if (ret)
  return ret;

 ret = i2c_smbus_read_i2c_block_data(data->client, MMA8452_OUT_X,
         3 * sizeof(__be16), (u8 *)buf);

 ret = mma8452_set_runtime_pm_state(data->client, 0);

 return ret;
}
