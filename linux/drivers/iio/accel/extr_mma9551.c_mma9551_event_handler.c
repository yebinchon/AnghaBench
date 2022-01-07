
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mma9551_data {int* irqs; int mutex; TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_ROC ;
 int IIO_INCLI ;
 int IIO_MOD_EVENT_CODE (int ,int ,int,int ,int ) ;
 int IRQ_HANDLED ;
 int MMA9551_APPID_TILT ;
 int MMA9551_TILT_XY_ANG_REG ;
 int MMA9551_TILT_XZ_ANG_REG ;
 int MMA9551_TILT_YZ_ANG_REG ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*,int) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct mma9551_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int mma9551_read_status_byte (TYPE_1__*,int ,int ,int *) ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t mma9551_event_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct mma9551_data *data = iio_priv(indio_dev);
 int i, ret, mma_axis = -1;
 u16 reg;
 u8 val;

 mutex_lock(&data->mutex);

 for (i = 0; i < 3; i++)
  if (irq == data->irqs[i]) {
   mma_axis = i;
   break;
  }

 if (mma_axis == -1) {

  dev_warn(&data->client->dev,
    "irq triggered on unused line %d\n", data->irqs[3]);
  goto out;
 }

 switch (mma_axis) {
 case 130:
  reg = MMA9551_TILT_YZ_ANG_REG;
  break;
 case 129:
  reg = MMA9551_TILT_XZ_ANG_REG;
  break;
 case 128:
  reg = MMA9551_TILT_XY_ANG_REG;
  break;
 }





 ret = mma9551_read_status_byte(data->client, MMA9551_APPID_TILT,
           reg, &val);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "error %d reading tilt register in IRQ\n", ret);
  goto out;
 }

 iio_push_event(indio_dev,
         IIO_MOD_EVENT_CODE(IIO_INCLI, 0, (mma_axis + 1),
       IIO_EV_TYPE_ROC, IIO_EV_DIR_RISING),
         iio_get_time_ns(indio_dev));

out:
 mutex_unlock(&data->mutex);

 return IRQ_HANDLED;
}
