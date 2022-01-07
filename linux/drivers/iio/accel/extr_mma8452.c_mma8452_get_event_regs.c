
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma8452_event_regs {int dummy; } ;
struct mma8452_data {TYPE_1__* chip_info; } ;
struct iio_chan_spec {int type; } ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
struct TYPE_2__ {int all_events; int enabled_events; } ;


 int EINVAL ;



 int MMA8452_INT_TRANS ;
 struct mma8452_event_regs ff_mt_ev_regs ;
 struct mma8452_event_regs trans_ev_regs ;

__attribute__((used)) static int mma8452_get_event_regs(struct mma8452_data *data,
  const struct iio_chan_spec *chan, enum iio_event_direction dir,
  const struct mma8452_event_regs **ev_reg)
{
 if (!chan)
  return -EINVAL;

 switch (chan->type) {
 case 130:
  switch (dir) {
  case 128:
   if ((data->chip_info->all_events
     & MMA8452_INT_TRANS) &&
    (data->chip_info->enabled_events
     & MMA8452_INT_TRANS))
    *ev_reg = &trans_ev_regs;
   else
    *ev_reg = &ff_mt_ev_regs;
   return 0;
  case 129:
   *ev_reg = &ff_mt_ev_regs;
   return 0;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
