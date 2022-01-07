
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk8ba50_data {int dummy; } ;
struct iio_dev {int dummy; } ;


 int STK8BA50_MODE_SUSPEND ;
 struct stk8ba50_data* iio_priv (struct iio_dev*) ;
 int stk8ba50_set_power (struct stk8ba50_data*,int ) ;

__attribute__((used)) static int stk8ba50_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct stk8ba50_data *data = iio_priv(indio_dev);

 return stk8ba50_set_power(data, STK8BA50_MODE_SUSPEND);
}
