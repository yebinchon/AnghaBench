
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rm3100_data {int regmap; } ;
struct iio_dev {int dummy; } ;


 int RM3100_REG_CMM ;
 struct rm3100_data* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int rm3100_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct rm3100_data *data = iio_priv(indio_dev);

 return regmap_write(data->regmap, RM3100_REG_CMM, 0);
}
