
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icn8318_touch_data {int touch_count; struct icn8318_touch* touches; scalar_t__ softbutton; } ;
struct icn8318_touch {int y; int x; int slot; int event; } ;
struct icn8318_data {int input; int prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int ICN8318_MAX_TOUCHES ;
 int IRQ_HANDLED ;
 int MT_TOOL_FINGER ;
 int be16_to_cpu (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int,int) ;
 int icn8318_read_touch_data (TYPE_1__*,struct icn8318_touch_data*) ;
 int icn8318_touch_active (int ) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int ) ;
 int input_mt_sync_frame (int ) ;
 int input_sync (int ) ;
 int touchscreen_report_pos (int ,int *,int ,int ,int) ;

__attribute__((used)) static irqreturn_t icn8318_irq(int irq, void *dev_id)
{
 struct icn8318_data *data = dev_id;
 struct device *dev = &data->client->dev;
 struct icn8318_touch_data touch_data;
 int i, ret;

 ret = icn8318_read_touch_data(data->client, &touch_data);
 if (ret < 0) {
  dev_err(dev, "Error reading touch data: %d\n", ret);
  return IRQ_HANDLED;
 }

 if (touch_data.softbutton) {






  return IRQ_HANDLED;
 }

 if (touch_data.touch_count > ICN8318_MAX_TOUCHES) {
  dev_warn(dev, "Too much touches %d > %d\n",
    touch_data.touch_count, ICN8318_MAX_TOUCHES);
  touch_data.touch_count = ICN8318_MAX_TOUCHES;
 }

 for (i = 0; i < touch_data.touch_count; i++) {
  struct icn8318_touch *touch = &touch_data.touches[i];
  bool act = icn8318_touch_active(touch->event);

  input_mt_slot(data->input, touch->slot);
  input_mt_report_slot_state(data->input, MT_TOOL_FINGER, act);
  if (!act)
   continue;

  touchscreen_report_pos(data->input, &data->prop,
           be16_to_cpu(touch->x),
           be16_to_cpu(touch->y), 1);
 }

 input_mt_sync_frame(data->input);
 input_sync(data->input);

 return IRQ_HANDLED;
}
