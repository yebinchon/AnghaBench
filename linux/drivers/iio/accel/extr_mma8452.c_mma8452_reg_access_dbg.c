
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int client; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 unsigned int MMA8452_MAX_REG ;
 int i2c_smbus_read_byte_data (int ,unsigned int) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int mma8452_change_config (struct mma8452_data*,unsigned int,unsigned int) ;

__attribute__((used)) static int mma8452_reg_access_dbg(struct iio_dev *indio_dev,
      unsigned int reg, unsigned int writeval,
      unsigned int *readval)
{
 int ret;
 struct mma8452_data *data = iio_priv(indio_dev);

 if (reg > MMA8452_MAX_REG)
  return -EINVAL;

 if (!readval)
  return mma8452_change_config(data, reg, writeval);

 ret = i2c_smbus_read_byte_data(data->client, reg);
 if (ret < 0)
  return ret;

 *readval = ret;

 return 0;
}
