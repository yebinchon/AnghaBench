
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int touch_data ;
struct icn8505_touch_data {int touch_count; int softbutton; struct icn8505_touch* touches; } ;
struct icn8505_touch {int y; int x; int slot; int event; } ;
struct icn8505_data {int input; int prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;


 int ICN8505_MAX_TOUCHES ;
 int ICN8505_REG_TOUCHDATA ;
 int IRQ_HANDLED ;
 int KEY_LEFTMETA ;
 int MT_TOOL_FINGER ;
 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int,int) ;
 int get_unaligned_le16 (int ) ;
 int icn8505_read_data (struct icn8505_data*,int ,struct icn8505_touch_data*,int) ;
 int icn8505_touch_active (int ) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int ) ;
 int input_mt_sync_frame (int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int touchscreen_report_pos (int ,int *,int ,int ,int) ;

__attribute__((used)) static irqreturn_t icn8505_irq(int irq, void *dev_id)
{
 struct icn8505_data *icn8505 = dev_id;
 struct device *dev = &icn8505->client->dev;
 struct icn8505_touch_data touch_data;
 int i, error;

 error = icn8505_read_data(icn8505, ICN8505_REG_TOUCHDATA,
      &touch_data, sizeof(touch_data));
 if (error) {
  dev_err(dev, "Error reading touch data: %d\n", error);
  return IRQ_HANDLED;
 }

 if (touch_data.touch_count > ICN8505_MAX_TOUCHES) {
  dev_warn(dev, "Too many touches %d > %d\n",
    touch_data.touch_count, ICN8505_MAX_TOUCHES);
  touch_data.touch_count = ICN8505_MAX_TOUCHES;
 }

 for (i = 0; i < touch_data.touch_count; i++) {
  struct icn8505_touch *touch = &touch_data.touches[i];
  bool act = icn8505_touch_active(touch->event);

  input_mt_slot(icn8505->input, touch->slot);
  input_mt_report_slot_state(icn8505->input, MT_TOOL_FINGER, act);
  if (!act)
   continue;

  touchscreen_report_pos(icn8505->input, &icn8505->prop,
           get_unaligned_le16(touch->x),
           get_unaligned_le16(touch->y),
           1);
 }

 input_mt_sync_frame(icn8505->input);
 input_report_key(icn8505->input, KEY_LEFTMETA,
    touch_data.softbutton == 1);
 input_sync(icn8505->input);

 return IRQ_HANDLED;
}
