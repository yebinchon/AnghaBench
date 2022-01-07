
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxcjk1013_data {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int kxcjk1013_set_power_state (struct kxcjk1013_data*,int) ;

__attribute__((used)) static int kxcjk1013_buffer_preenable(struct iio_dev *indio_dev)
{
 struct kxcjk1013_data *data = iio_priv(indio_dev);

 return kxcjk1013_set_power_state(data, 1);
}
