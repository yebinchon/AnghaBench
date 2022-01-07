
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct tgfx {int sticks; int timer; TYPE_1__* pd; struct input_dev** dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int port; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_THUMB ;
 int BTN_THUMB2 ;
 int BTN_TOP ;
 int BTN_TOP2 ;
 int BTN_TRIGGER ;
 int TGFX_DOWN ;
 int TGFX_LEFT ;
 scalar_t__ TGFX_REFRESH_TIME ;
 int TGFX_RIGHT ;
 int TGFX_THUMB ;
 int TGFX_THUMB2 ;
 int TGFX_TOP ;
 int TGFX_TOP2 ;
 int TGFX_TRIGGER ;
 int TGFX_UP ;
 struct tgfx* from_timer (int ,struct timer_list*,int ) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int parport_read_control (int ) ;
 int parport_read_status (int ) ;
 int parport_write_data (int ,int) ;
 struct tgfx* tgfx ;
 int timer ;

__attribute__((used)) static void tgfx_timer(struct timer_list *t)
{
 struct tgfx *tgfx = from_timer(tgfx, t, timer);
 struct input_dev *dev;
 int data1, data2, i;

 for (i = 0; i < 7; i++)
  if (tgfx->sticks & (1 << i)) {

   dev = tgfx->dev[i];

   parport_write_data(tgfx->pd->port, ~(1 << i));
   data1 = parport_read_status(tgfx->pd->port) ^ 0x7f;
   data2 = parport_read_control(tgfx->pd->port) ^ 0x04;

   input_report_abs(dev, ABS_X, !!(data1 & TGFX_RIGHT) - !!(data1 & TGFX_LEFT));
   input_report_abs(dev, ABS_Y, !!(data1 & TGFX_DOWN ) - !!(data1 & TGFX_UP ));

   input_report_key(dev, BTN_TRIGGER, (data1 & TGFX_TRIGGER));
   input_report_key(dev, BTN_THUMB, (data2 & TGFX_THUMB ));
   input_report_key(dev, BTN_THUMB2, (data2 & TGFX_THUMB2 ));
   input_report_key(dev, BTN_TOP, (data2 & TGFX_TOP ));
   input_report_key(dev, BTN_TOP2, (data2 & TGFX_TOP2 ));

   input_sync(dev);
  }

 mod_timer(&tgfx->timer, jiffies + TGFX_REFRESH_TIME);
}
