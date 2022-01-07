
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct bmg160_data {int dummy; } ;


 int bmg160_set_power_state (struct bmg160_data*,int) ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bmg160_buffer_postdisable(struct iio_dev *indio_dev)
{
 struct bmg160_data *data = iio_priv(indio_dev);

 return bmg160_set_power_state(data, 0);
}
