
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm3100_data {int regmap; } ;
struct iio_dev {int* active_scan_mask; } ;


 int RM3100_CMM_AXIS_SHIFT ;
 int RM3100_CMM_START ;
 int RM3100_REG_CMM ;
 struct rm3100_data* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int rm3100_buffer_preenable(struct iio_dev *indio_dev)
{
 struct rm3100_data *data = iio_priv(indio_dev);


 return regmap_write(data->regmap, RM3100_REG_CMM,
  (*indio_dev->active_scan_mask & 0x7) << RM3100_CMM_AXIS_SHIFT |
  RM3100_CMM_START);
}
