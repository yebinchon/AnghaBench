
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv090x_state {int srate; int search_range; int search_mode; TYPE_1__* internal; } ;
typedef int s32 ;
struct TYPE_2__ {int mclk; } ;







__attribute__((used)) static int stv090x_get_loop_params(struct stv090x_state *state, s32 *freq_inc, s32 *timeout_sw, s32 *steps)
{
 s32 timeout, inc, steps_max, srate, car_max;

 srate = state->srate;
 car_max = state->search_range / 1000;
 car_max += car_max / 10;
 car_max = 65536 * (car_max / 2);
 car_max /= (state->internal->mclk / 1000);

 if (car_max > 0x4000)
  car_max = 0x4000 ;

 inc = srate;
 inc /= state->internal->mclk / 1000;
 inc *= 256;
 inc *= 256;
 inc /= 1000;

 switch (state->search_mode) {
 case 129:
 case 130:
  inc *= 3;
  timeout = 20;
  break;

 case 128:
  inc *= 4;
  timeout = 25;
  break;

 case 131:
 default:
  inc *= 3;
  timeout = 25;
  break;
 }
 inc /= 100;
 if ((inc > car_max) || (inc < 0))
  inc = car_max / 2;

 timeout *= 27500;
 if (srate > 0)
  timeout /= (srate / 1000);

 if ((timeout > 100) || (timeout < 0))
  timeout = 100;

 steps_max = (car_max / inc) + 1;
 if ((steps_max > 100) || (steps_max < 0)) {
  steps_max = 100;
  inc = car_max / steps_max;
 }
 *freq_inc = inc;
 *timeout_sw = timeout;
 *steps = steps_max;

 return 0;
}
