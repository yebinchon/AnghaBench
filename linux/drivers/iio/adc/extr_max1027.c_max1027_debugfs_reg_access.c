
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct max1027_state {int spi; scalar_t__ buffer; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 struct max1027_state* iio_priv (struct iio_dev*) ;
 int spi_write (int ,scalar_t__*,int) ;

__attribute__((used)) static int max1027_debugfs_reg_access(struct iio_dev *indio_dev,
          unsigned reg, unsigned writeval,
          unsigned *readval)
{
 struct max1027_state *st = iio_priv(indio_dev);
 u8 *val = (u8 *)st->buffer;

 if (readval != ((void*)0))
  return -EINVAL;

 *val = (u8)writeval;
 return spi_write(st->spi, val, 1);
}
