
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct input_dev {int* rep; TYPE_1__ timer; } ;


 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 int input_repeat_key ;

void input_enable_softrepeat(struct input_dev *dev, int delay, int period)
{
 dev->timer.function = input_repeat_key;
 dev->rep[REP_DELAY] = delay;
 dev->rep[REP_PERIOD] = period;
}
