
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tsc2007 {scalar_t__ max_rt; int (* clear_penirq ) () ;TYPE_1__* client; int poll_period; int stopped; int wait; int get_pendown_state; int mlock; struct input_dev* input; } ;
struct ts_event {scalar_t__ x; scalar_t__ y; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,...) ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 () ;
 scalar_t__ tsc2007_calculate_resistance (struct tsc2007*,struct ts_event*) ;
 scalar_t__ tsc2007_is_pen_down (struct tsc2007*) ;
 int tsc2007_read_values (struct tsc2007*,struct ts_event*) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t tsc2007_soft_irq(int irq, void *handle)
{
 struct tsc2007 *ts = handle;
 struct input_dev *input = ts->input;
 struct ts_event tc;
 u32 rt;

 while (!ts->stopped && tsc2007_is_pen_down(ts)) {



  mutex_lock(&ts->mlock);
  tsc2007_read_values(ts, &tc);
  mutex_unlock(&ts->mlock);

  rt = tsc2007_calculate_resistance(ts, &tc);

  if (!rt && !ts->get_pendown_state) {





   break;
  }

  if (rt <= ts->max_rt) {
   dev_dbg(&ts->client->dev,
    "DOWN point(%4d,%4d), resistance (%4u)\n",
    tc.x, tc.y, rt);

   rt = ts->max_rt - rt;

   input_report_key(input, BTN_TOUCH, 1);
   input_report_abs(input, ABS_X, tc.x);
   input_report_abs(input, ABS_Y, tc.y);
   input_report_abs(input, ABS_PRESSURE, rt);

   input_sync(input);

  } else {





   dev_dbg(&ts->client->dev, "ignored pressure %d\n", rt);
  }

  wait_event_timeout(ts->wait, ts->stopped, ts->poll_period);
 }

 dev_dbg(&ts->client->dev, "UP\n");

 input_report_key(input, BTN_TOUCH, 0);
 input_report_abs(input, ABS_PRESSURE, 0);
 input_sync(input);

 if (ts->clear_penirq)
  ts->clear_penirq();

 return IRQ_HANDLED;
}
