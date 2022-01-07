
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct input_mt_pos {int y; int x; } ;
struct ektf2127_ts {int input; int prop; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EKTF2127_MAX_TOUCHES ;
 int MT_TOOL_FINGER ;
 int dev_err (int *,char*,unsigned int,int) ;
 int ektf2127_parse_coordinates (int const*,unsigned int,struct input_mt_pos*) ;
 int input_mt_assign_slots (int ,int*,struct input_mt_pos*,unsigned int,int ) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_sync (int ) ;
 int touchscreen_report_pos (int ,int *,int ,int ,int) ;

__attribute__((used)) static void ektf2127_report_event(struct ektf2127_ts *ts, const u8 *buf)
{
 struct input_mt_pos touches[EKTF2127_MAX_TOUCHES];
 int slots[EKTF2127_MAX_TOUCHES];
 unsigned int touch_count, i;

 touch_count = buf[1] & 0x07;
 if (touch_count > EKTF2127_MAX_TOUCHES) {
  dev_err(&ts->client->dev,
   "Too many touches %d > %d\n",
   touch_count, EKTF2127_MAX_TOUCHES);
  touch_count = EKTF2127_MAX_TOUCHES;
 }

 ektf2127_parse_coordinates(buf, touch_count, touches);
 input_mt_assign_slots(ts->input, slots, touches,
         touch_count, 0);

 for (i = 0; i < touch_count; i++) {
  input_mt_slot(ts->input, slots[i]);
  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER, 1);
  touchscreen_report_pos(ts->input, &ts->prop,
           touches[i].x, touches[i].y, 1);
 }

 input_mt_sync_frame(ts->input);
 input_sync(ts->input);
}
