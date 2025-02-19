
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
struct i2c_client {int dev; } ;
struct ccs811_data {struct i2c_client* client; } ;
typedef int s16 ;
typedef int irqreturn_t ;


 int CCS811_ALG_RESULT_DATA ;
 int IRQ_HANDLED ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int *) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ccs811_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;

__attribute__((used)) static irqreturn_t ccs811_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ccs811_data *data = iio_priv(indio_dev);
 struct i2c_client *client = data->client;
 s16 buf[8];
 int ret;

 ret = i2c_smbus_read_i2c_block_data(client, CCS811_ALG_RESULT_DATA, 4,
         (u8 *)&buf);
 if (ret != 4) {
  dev_err(&client->dev, "cannot read sensor data\n");
  goto err;
 }

 iio_push_to_buffers_with_timestamp(indio_dev, buf,
        iio_get_time_ns(indio_dev));

err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
