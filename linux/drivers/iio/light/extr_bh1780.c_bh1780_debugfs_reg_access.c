
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct bh1780_data {int dummy; } ;


 int bh1780_read (struct bh1780_data*,int ) ;
 int bh1780_write (struct bh1780_data*,int ,int ) ;
 struct bh1780_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bh1780_debugfs_reg_access(struct iio_dev *indio_dev,
         unsigned int reg, unsigned int writeval,
         unsigned int *readval)
{
 struct bh1780_data *bh1780 = iio_priv(indio_dev);
 int ret;

 if (!readval)
  return bh1780_write(bh1780, (u8)reg, (u8)writeval);

 ret = bh1780_read(bh1780, (u8)reg);
 if (ret < 0)
  return ret;

 *readval = ret;

 return 0;
}
