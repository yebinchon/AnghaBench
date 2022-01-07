
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct max30100_data* iio_priv (struct iio_dev*) ;
 int max30100_set_powermode (struct max30100_data*,int) ;

__attribute__((used)) static int max30100_buffer_predisable(struct iio_dev *indio_dev)
{
 struct max30100_data *data = iio_priv(indio_dev);

 return max30100_set_powermode(data, 0);
}
