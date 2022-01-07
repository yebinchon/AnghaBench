
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pixcir_report_data {int num_touches; TYPE_2__* pos; int * ids; } ;
struct pixcir_i2c_ts_data {int input; struct pixcir_i2c_chip_data* chip; TYPE_1__* client; } ;
struct pixcir_i2c_chip_data {scalar_t__ has_hw_ids; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int y; int x; } ;
struct TYPE_3__ {struct device dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int MT_TOOL_FINGER ;
 int PIXCIR_MAX_SLOTS ;
 int dev_dbg (struct device*,char*,int,...) ;
 int input_mt_assign_slots (int ,int*,TYPE_2__*,int,int ) ;
 int input_mt_get_slot_by_key (int ,int ) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_report_abs (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static void pixcir_ts_report(struct pixcir_i2c_ts_data *ts,
        struct pixcir_report_data *report)
{
 int slots[PIXCIR_MAX_SLOTS];
 int n, i, slot;
 struct device *dev = &ts->client->dev;
 const struct pixcir_i2c_chip_data *chip = ts->chip;

 n = report->num_touches;
 if (n > PIXCIR_MAX_SLOTS)
  n = PIXCIR_MAX_SLOTS;

 if (!ts->chip->has_hw_ids)
  input_mt_assign_slots(ts->input, slots, report->pos, n, 0);

 for (i = 0; i < n; i++) {
  if (chip->has_hw_ids) {
   slot = input_mt_get_slot_by_key(ts->input,
       report->ids[i]);
   if (slot < 0) {
    dev_dbg(dev, "no free slot for id 0x%x\n",
     report->ids[i]);
    continue;
   }
  } else {
   slot = slots[i];
  }

  input_mt_slot(ts->input, slot);
  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER, 1);

  input_report_abs(ts->input, ABS_MT_POSITION_X,
     report->pos[i].x);
  input_report_abs(ts->input, ABS_MT_POSITION_Y,
     report->pos[i].y);

  dev_dbg(dev, "%d: slot %d, x %d, y %d\n",
   i, slot, report->pos[i].x, report->pos[i].y);
 }

 input_mt_sync_frame(ts->input);
 input_sync(ts->input);
}
