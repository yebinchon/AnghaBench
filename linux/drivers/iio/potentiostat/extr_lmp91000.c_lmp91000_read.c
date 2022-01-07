
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lmp91000_data {int chan_select; int* buffer; int completion; int trig; int regmap; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;
 int LMP91000_REG_MODECN ;
 int LMP91000_REG_MODECN_3LEAD ;
 int LMP91000_REG_MODECN_TEMP ;
 int iio_trigger_poll_chained (int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int reinit_completion (int *) ;
 int usleep_range (int,int) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int lmp91000_read(struct lmp91000_data *data, int channel, int *val)
{
 int state, ret;

 ret = regmap_read(data->regmap, LMP91000_REG_MODECN, &state);
 if (ret)
  return -EINVAL;

 ret = regmap_write(data->regmap, LMP91000_REG_MODECN, channel);
 if (ret)
  return -EINVAL;


 if (state != channel && channel == LMP91000_REG_MODECN_TEMP)
  usleep_range(3000, 4000);

 data->chan_select = channel != LMP91000_REG_MODECN_3LEAD;

 iio_trigger_poll_chained(data->trig);

 ret = wait_for_completion_timeout(&data->completion, HZ);
 reinit_completion(&data->completion);

 if (!ret)
  return -ETIMEDOUT;

 *val = data->buffer[data->chan_select];

 return 0;
}
