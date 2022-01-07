
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct gp2ap020a00f_data {int lock; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
typedef enum gp2ap020a00f_cmd { ____Placeholder_gp2ap020a00f_cmd } gp2ap020a00f_cmd ;


 int EINVAL ;
 int GP2AP020A00F_CMD_ALS_HIGH_EV_DIS ;
 int GP2AP020A00F_CMD_ALS_HIGH_EV_EN ;
 int GP2AP020A00F_CMD_ALS_LOW_EV_DIS ;
 int GP2AP020A00F_CMD_ALS_LOW_EV_EN ;
 int IIO_EV_DIR_RISING ;


 int gp2ap020a00f_exec_cmd (struct gp2ap020a00f_data*,int) ;
 int gp2ap020a00f_write_prox_event_config (struct iio_dev*,int) ;
 struct gp2ap020a00f_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int gp2ap020a00f_write_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir,
        int state)
{
 struct gp2ap020a00f_data *data = iio_priv(indio_dev);
 enum gp2ap020a00f_cmd cmd;
 int err;

 mutex_lock(&data->lock);

 switch (chan->type) {
 case 128:
  err = gp2ap020a00f_write_prox_event_config(indio_dev, state);
  break;
 case 129:
  if (dir == IIO_EV_DIR_RISING) {
   cmd = state ? GP2AP020A00F_CMD_ALS_HIGH_EV_EN :
          GP2AP020A00F_CMD_ALS_HIGH_EV_DIS;
   err = gp2ap020a00f_exec_cmd(data, cmd);
  } else {
   cmd = state ? GP2AP020A00F_CMD_ALS_LOW_EV_EN :
          GP2AP020A00F_CMD_ALS_LOW_EV_DIS;
   err = gp2ap020a00f_exec_cmd(data, cmd);
  }
  break;
 default:
  err = -EINVAL;
 }

 mutex_unlock(&data->lock);

 return err;
}
