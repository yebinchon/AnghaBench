
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct stmfts_data {int input; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int MT_TOOL_FINGER ;
 int const STMFTS_MASK_TOUCH_ID ;
 int const STMFTS_MASK_X_MSB ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void stmfts_report_contact_event(struct stmfts_data *sdata,
     const u8 event[])
{
 u8 slot_id = (event[0] & STMFTS_MASK_TOUCH_ID) >> 4;
 u16 x = event[1] | ((event[2] & STMFTS_MASK_X_MSB) << 8);
 u16 y = (event[2] >> 4) | (event[3] << 4);
 u8 maj = event[4];
 u8 min = event[5];
 u8 orientation = event[6];
 u8 area = event[7];

 input_mt_slot(sdata->input, slot_id);

 input_mt_report_slot_state(sdata->input, MT_TOOL_FINGER, 1);
 input_report_abs(sdata->input, ABS_MT_POSITION_X, x);
 input_report_abs(sdata->input, ABS_MT_POSITION_Y, y);
 input_report_abs(sdata->input, ABS_MT_TOUCH_MAJOR, maj);
 input_report_abs(sdata->input, ABS_MT_TOUCH_MINOR, min);
 input_report_abs(sdata->input, ABS_MT_PRESSURE, area);
 input_report_abs(sdata->input, ABS_MT_ORIENTATION, orientation);

 input_sync(sdata->input);
}
