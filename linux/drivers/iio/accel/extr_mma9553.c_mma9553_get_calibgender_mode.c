
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int filter; } ;
struct mma9553_data {TYPE_1__ conf; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int MMA9553_MASK_CONF_MALE ;
 struct mma9553_data* iio_priv (struct iio_dev*) ;
 int mma9553_get_bits (int ,int ) ;

__attribute__((used)) static int mma9553_get_calibgender_mode(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan)
{
 struct mma9553_data *data = iio_priv(indio_dev);
 u8 gender;

 gender = mma9553_get_bits(data->conf.filter, MMA9553_MASK_CONF_MALE);




 return !gender;
}
