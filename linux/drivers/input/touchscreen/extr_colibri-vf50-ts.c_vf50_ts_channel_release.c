
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_channel {int dummy; } ;


 int iio_channel_release_all (struct iio_channel*) ;

__attribute__((used)) static void vf50_ts_channel_release(void *data)
{
 struct iio_channel *channels = data;

 iio_channel_release_all(channels);
}
