
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct raydium_data {int report_size; int contact_size; int* report_data; int input; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int MT_TOOL_FINGER ;
 size_t RM_CONTACT_PRESSURE_POS ;
 size_t RM_CONTACT_STATE_POS ;
 size_t RM_CONTACT_WIDTH_X_POS ;
 size_t RM_CONTACT_WIDTH_Y_POS ;
 size_t RM_CONTACT_X_POS ;
 size_t RM_CONTACT_Y_POS ;
 int get_unaligned_le16 (int*) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static void raydium_mt_event(struct raydium_data *ts)
{
 int i;

 for (i = 0; i < ts->report_size / ts->contact_size; i++) {
  u8 *contact = &ts->report_data[ts->contact_size * i];
  bool state = contact[RM_CONTACT_STATE_POS];
  u8 wx, wy;

  input_mt_slot(ts->input, i);
  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER, state);

  if (!state)
   continue;

  input_report_abs(ts->input, ABS_MT_POSITION_X,
    get_unaligned_le16(&contact[RM_CONTACT_X_POS]));
  input_report_abs(ts->input, ABS_MT_POSITION_Y,
    get_unaligned_le16(&contact[RM_CONTACT_Y_POS]));
  input_report_abs(ts->input, ABS_MT_PRESSURE,
    contact[RM_CONTACT_PRESSURE_POS]);

  wx = contact[RM_CONTACT_WIDTH_X_POS];
  wy = contact[RM_CONTACT_WIDTH_Y_POS];

  input_report_abs(ts->input, ABS_MT_TOUCH_MAJOR, max(wx, wy));
  input_report_abs(ts->input, ABS_MT_TOUCH_MINOR, min(wx, wy));
 }

 input_mt_sync_frame(ts->input);
 input_sync(ts->input);
}
