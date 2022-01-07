
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int touching; } ;
struct at91_adc_state {TYPE_1__ touch_st; } ;


 int AT91_SAMA5D2_TOUCH_X_CHAN_IDX ;
 int AT91_SAMA5D2_TOUCH_Y_CHAN_IDX ;
 int ENODATA ;
 int IIO_VAL_INT ;
 scalar_t__ at91_adc_touch_x_pos (struct at91_adc_state*) ;
 scalar_t__ at91_adc_touch_y_pos (struct at91_adc_state*) ;

__attribute__((used)) static int at91_adc_read_position(struct at91_adc_state *st, int chan, u16 *val)
{
 *val = 0;
 if (!st->touch_st.touching)
  return -ENODATA;
 if (chan == AT91_SAMA5D2_TOUCH_X_CHAN_IDX)
  *val = at91_adc_touch_x_pos(st);
 else if (chan == AT91_SAMA5D2_TOUCH_Y_CHAN_IDX)
  *val = at91_adc_touch_y_pos(st);
 else
  return -ENODATA;

 return IIO_VAL_INT;
}
