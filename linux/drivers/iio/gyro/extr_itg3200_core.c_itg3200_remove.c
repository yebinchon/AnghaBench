
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {scalar_t__ irq; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int itg3200_buffer_unconfigure (struct iio_dev*) ;
 int itg3200_remove_trigger (struct iio_dev*) ;

__attribute__((used)) static int itg3200_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 iio_device_unregister(indio_dev);

 if (client->irq)
  itg3200_remove_trigger(indio_dev);

 itg3200_buffer_unconfigure(indio_dev);

 return 0;
}
