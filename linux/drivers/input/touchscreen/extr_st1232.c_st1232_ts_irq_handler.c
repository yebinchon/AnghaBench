
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st1232_ts_finger {int y; int x; int t; int is_valid; } ;
struct TYPE_7__ {int * dev; } ;
struct st1232_ts_data {TYPE_3__ low_latency_req; TYPE_2__* client; int prop; TYPE_1__* chip_info; struct input_dev* input_dev; struct st1232_ts_finger* finger; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int max_fingers; scalar_t__ have_z; } ;


 int ABS_MT_TOUCH_MAJOR ;
 int DEV_PM_QOS_RESUME_LATENCY ;
 int IRQ_HANDLED ;
 int dev_pm_qos_add_ancestor_request (int *,TYPE_3__*,int ,int) ;
 int dev_pm_qos_remove_request (TYPE_3__*) ;
 int input_mt_sync (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int st1232_ts_read_data (struct st1232_ts_data*) ;
 int touchscreen_report_pos (struct input_dev*,int *,int ,int ,int) ;

__attribute__((used)) static irqreturn_t st1232_ts_irq_handler(int irq, void *dev_id)
{
 struct st1232_ts_data *ts = dev_id;
 struct st1232_ts_finger *finger = ts->finger;
 struct input_dev *input_dev = ts->input_dev;
 int count = 0;
 int i, ret;

 ret = st1232_ts_read_data(ts);
 if (ret < 0)
  goto end;


 for (i = 0; i < ts->chip_info->max_fingers; i++) {
  if (!finger[i].is_valid)
   continue;

  if (ts->chip_info->have_z)
   input_report_abs(input_dev, ABS_MT_TOUCH_MAJOR,
      finger[i].t);

  touchscreen_report_pos(input_dev, &ts->prop,
     finger[i].x, finger[i].y, 1);
  input_mt_sync(input_dev);
  count++;
 }


 if (!count) {
  input_mt_sync(input_dev);
  if (ts->low_latency_req.dev) {
   dev_pm_qos_remove_request(&ts->low_latency_req);
   ts->low_latency_req.dev = ((void*)0);
  }
 } else if (!ts->low_latency_req.dev) {

  dev_pm_qos_add_ancestor_request(&ts->client->dev,
      &ts->low_latency_req,
      DEV_PM_QOS_RESUME_LATENCY, 100);
 }


 input_sync(input_dev);

end:
 return IRQ_HANDLED;
}
