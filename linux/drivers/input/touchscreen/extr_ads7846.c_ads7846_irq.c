
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct ads7846 {int pendown; TYPE_1__* spi; struct input_dev* input; int stopped; int wait; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int TS_POLL_DELAY ;
 int TS_POLL_PERIOD ;
 int ads7846_read_state (struct ads7846*) ;
 int ads7846_report_state (struct ads7846*) ;
 int dev_vdbg (int *,char*) ;
 scalar_t__ get_pendown_state (struct ads7846*) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int msecs_to_jiffies (int ) ;
 int msleep (int ) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t ads7846_irq(int irq, void *handle)
{
 struct ads7846 *ts = handle;


 msleep(TS_POLL_DELAY);

 while (!ts->stopped && get_pendown_state(ts)) {


  ads7846_read_state(ts);

  if (!ts->stopped)
   ads7846_report_state(ts);

  wait_event_timeout(ts->wait, ts->stopped,
       msecs_to_jiffies(TS_POLL_PERIOD));
 }

 if (ts->pendown && !ts->stopped) {
  struct input_dev *input = ts->input;

  input_report_key(input, BTN_TOUCH, 0);
  input_report_abs(input, ABS_PRESSURE, 0);
  input_sync(input);

  ts->pendown = 0;
  dev_vdbg(&ts->spi->dev, "UP\n");
 }

 return IRQ_HANDLED;
}
