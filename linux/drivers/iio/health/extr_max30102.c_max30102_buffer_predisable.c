
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30102_data {int dummy; } ;
struct iio_dev {int dummy; } ;


 int MAX30102_REG_MODE_CONFIG_MODE_NONE ;
 struct max30102_data* iio_priv (struct iio_dev*) ;
 int max30102_set_powermode (struct max30102_data*,int ,int) ;

__attribute__((used)) static int max30102_buffer_predisable(struct iio_dev *indio_dev)
{
 struct max30102_data *data = iio_priv(indio_dev);

 return max30102_set_powermode(data, MAX30102_REG_MODE_CONFIG_MODE_NONE,
          0);
}
