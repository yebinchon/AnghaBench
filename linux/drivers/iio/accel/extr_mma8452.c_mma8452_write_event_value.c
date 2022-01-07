
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_event_regs {int ev_ths_mask; int ev_count; int ev_ths; } ;
struct mma8452_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;



 int MMA8452_TRANSIENT_CFG ;
 int MMA8452_TRANSIENT_CFG_HPF_BYP ;
 int USEC_PER_SEC ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int mma8452_change_config (struct mma8452_data*,int ,int) ;
 int mma8452_get_event_regs (struct mma8452_data*,struct iio_chan_spec const*,int,struct mma8452_event_regs const**) ;
 size_t mma8452_get_odr_index (struct mma8452_data*) ;
 int mma8452_get_power_mode (struct mma8452_data*) ;
 int mma8452_set_hp_filter_frequency (struct mma8452_data*,int,int) ;
 int** mma8452_time_step_us ;

__attribute__((used)) static int mma8452_write_event_value(struct iio_dev *indio_dev,
    const struct iio_chan_spec *chan,
    enum iio_event_type type,
    enum iio_event_direction dir,
    enum iio_event_info info,
    int val, int val2)
{
 struct mma8452_data *data = iio_priv(indio_dev);
 int ret, reg, steps;
 const struct mma8452_event_regs *ev_regs;

 ret = mma8452_get_event_regs(data, chan, dir, &ev_regs);
 if (ret)
  return ret;

 switch (info) {
 case 128:
  if (val < 0 || val > ev_regs->ev_ths_mask)
   return -EINVAL;

  return mma8452_change_config(data, ev_regs->ev_ths, val);

 case 129:
  ret = mma8452_get_power_mode(data);
  if (ret < 0)
   return ret;

  steps = (val * USEC_PER_SEC + val2) /
    mma8452_time_step_us[ret][
     mma8452_get_odr_index(data)];

  if (steps < 0 || steps > 0xff)
   return -EINVAL;

  return mma8452_change_config(data, ev_regs->ev_count, steps);

 case 130:
  reg = i2c_smbus_read_byte_data(data->client,
            MMA8452_TRANSIENT_CFG);
  if (reg < 0)
   return reg;

  if (val == 0 && val2 == 0) {
   reg |= MMA8452_TRANSIENT_CFG_HPF_BYP;
  } else {
   reg &= ~MMA8452_TRANSIENT_CFG_HPF_BYP;
   ret = mma8452_set_hp_filter_frequency(data, val, val2);
   if (ret < 0)
    return ret;
  }

  return mma8452_change_config(data, MMA8452_TRANSIENT_CFG, reg);

 default:
  return -EINVAL;
 }
}
