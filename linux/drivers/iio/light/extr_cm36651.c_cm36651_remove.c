
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int irq; } ;
struct cm36651_data {int ara_client; int ps_client; int vled_reg; } ;


 int free_irq (int ,struct iio_dev*) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct cm36651_data* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int cm36651_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct cm36651_data *cm36651 = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 regulator_disable(cm36651->vled_reg);
 free_irq(client->irq, indio_dev);
 i2c_unregister_device(cm36651->ps_client);
 i2c_unregister_device(cm36651->ara_client);

 return 0;
}
