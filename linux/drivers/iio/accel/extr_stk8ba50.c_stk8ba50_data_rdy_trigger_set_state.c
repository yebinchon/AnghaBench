
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stk8ba50_data {int dready_trigger_on; TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int STK8BA50_DREADY_INT_MASK ;
 int STK8BA50_REG_INTEN2 ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 struct stk8ba50_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int stk8ba50_data_rdy_trigger_set_state(struct iio_trigger *trig,
            bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct stk8ba50_data *data = iio_priv(indio_dev);
 int ret;

 if (state)
  ret = i2c_smbus_write_byte_data(data->client,
   STK8BA50_REG_INTEN2, STK8BA50_DREADY_INT_MASK);
 else
  ret = i2c_smbus_write_byte_data(data->client,
   STK8BA50_REG_INTEN2, 0x00);

 if (ret < 0)
  dev_err(&data->client->dev, "failed to set trigger state\n");
 else
  data->dready_trigger_on = state;

 return ret;
}
