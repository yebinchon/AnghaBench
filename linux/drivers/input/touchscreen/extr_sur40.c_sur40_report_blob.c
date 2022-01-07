
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sur40_blob {scalar_t__ type; int ctr_y; int ctr_x; int pos_y; int pos_x; int bb_size_y; int bb_size_x; int blob_id; } ;
struct input_dev {int dummy; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOOL_X ;
 int ABS_MT_TOOL_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int MAX_CONTACTS ;
 int MT_TOOL_FINGER ;
 scalar_t__ SUR40_TOUCH ;
 int input_mt_get_slot_by_key (struct input_dev*,int ) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int le16_to_cpu (int ) ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static void sur40_report_blob(struct sur40_blob *blob, struct input_dev *input)
{
 int wide, major, minor;
 int bb_size_x, bb_size_y, pos_x, pos_y, ctr_x, ctr_y, slotnum;

 if (blob->type != SUR40_TOUCH)
  return;

 slotnum = input_mt_get_slot_by_key(input, blob->blob_id);
 if (slotnum < 0 || slotnum >= MAX_CONTACTS)
  return;

 bb_size_x = le16_to_cpu(blob->bb_size_x);
 bb_size_y = le16_to_cpu(blob->bb_size_y);

 pos_x = le16_to_cpu(blob->pos_x);
 pos_y = le16_to_cpu(blob->pos_y);

 ctr_x = le16_to_cpu(blob->ctr_x);
 ctr_y = le16_to_cpu(blob->ctr_y);

 input_mt_slot(input, slotnum);
 input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
 wide = (bb_size_x > bb_size_y);
 major = max(bb_size_x, bb_size_y);
 minor = min(bb_size_x, bb_size_y);

 input_report_abs(input, ABS_MT_POSITION_X, pos_x);
 input_report_abs(input, ABS_MT_POSITION_Y, pos_y);
 input_report_abs(input, ABS_MT_TOOL_X, ctr_x);
 input_report_abs(input, ABS_MT_TOOL_Y, ctr_y);


 input_report_abs(input, ABS_MT_ORIENTATION, wide);
 input_report_abs(input, ABS_MT_TOUCH_MAJOR, major);
 input_report_abs(input, ABS_MT_TOUCH_MINOR, minor);
}
