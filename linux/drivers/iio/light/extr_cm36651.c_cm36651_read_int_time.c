
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int type; size_t address; } ;
struct cm36651_data {int ps_int_time; int * cs_int_time; } ;


 int CM36651_CS_IT1 ;
 int CM36651_CS_IT2 ;
 int CM36651_CS_IT3 ;
 int CM36651_CS_IT4 ;
 int CM36651_PS_IT1 ;
 int CM36651_PS_IT2 ;
 int CM36651_PS_IT3 ;
 int CM36651_PS_IT4 ;
 int EINVAL ;


 int IIO_VAL_INT_PLUS_MICRO ;

__attribute__((used)) static int cm36651_read_int_time(struct cm36651_data *cm36651,
    struct iio_chan_spec const *chan, int *val2)
{
 switch (chan->type) {
 case 129:
  if (cm36651->cs_int_time[chan->address] == CM36651_CS_IT1)
   *val2 = 80000;
  else if (cm36651->cs_int_time[chan->address] == CM36651_CS_IT2)
   *val2 = 160000;
  else if (cm36651->cs_int_time[chan->address] == CM36651_CS_IT3)
   *val2 = 320000;
  else if (cm36651->cs_int_time[chan->address] == CM36651_CS_IT4)
   *val2 = 640000;
  else
   return -EINVAL;
  break;
 case 128:
  if (cm36651->ps_int_time == CM36651_PS_IT1)
   *val2 = 320;
  else if (cm36651->ps_int_time == CM36651_PS_IT2)
   *val2 = 420;
  else if (cm36651->ps_int_time == CM36651_PS_IT3)
   *val2 = 520;
  else if (cm36651->ps_int_time == CM36651_PS_IT4)
   *val2 = 640;
  else
   return -EINVAL;
  break;
 default:
  return -EINVAL;
 }

 return IIO_VAL_INT_PLUS_MICRO;
}
