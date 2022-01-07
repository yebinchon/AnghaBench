
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct alps_dev {int max_fingers; int input2; int input; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int MT_TOOL_FINGER ;
 int REL_X ;
 int REL_Y ;




 void* get_unaligned_le16 (int*) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_report_abs (int ,int ,unsigned int) ;
 int input_report_key (int ,int ,int) ;
 int input_report_rel (int ,int ,short) ;
 int input_sync (int ) ;

__attribute__((used)) static int u1_raw_event(struct alps_dev *hdata, u8 *data, int size)
{
 unsigned int x, y, z;
 int i;
 short sp_x, sp_y;

 if (!data)
  return 0;
 switch (data[0]) {
 case 129:
  break;
 case 130:
  break;
 case 131:
  for (i = 0; i < hdata->max_fingers; i++) {
   u8 *contact = &data[i * 5];

   x = get_unaligned_le16(contact + 3);
   y = get_unaligned_le16(contact + 5);
   z = contact[7] & 0x7F;

   input_mt_slot(hdata->input, i);

   if (z != 0) {
    input_mt_report_slot_state(hdata->input,
     MT_TOOL_FINGER, 1);
    input_report_abs(hdata->input,
     ABS_MT_POSITION_X, x);
    input_report_abs(hdata->input,
     ABS_MT_POSITION_Y, y);
    input_report_abs(hdata->input,
     ABS_MT_PRESSURE, z);
   } else {
    input_mt_report_slot_state(hdata->input,
     MT_TOOL_FINGER, 0);
   }
  }

  input_mt_sync_frame(hdata->input);

  input_report_key(hdata->input, BTN_LEFT,
   data[1] & 0x1);
  input_report_key(hdata->input, BTN_RIGHT,
   (data[1] & 0x2));
  input_report_key(hdata->input, BTN_MIDDLE,
   (data[1] & 0x4));

  input_sync(hdata->input);

  return 1;

 case 128:
  sp_x = get_unaligned_le16(data+2);
  sp_y = get_unaligned_le16(data+4);

  sp_x = sp_x / 8;
  sp_y = sp_y / 8;

  input_report_rel(hdata->input2, REL_X, sp_x);
  input_report_rel(hdata->input2, REL_Y, sp_y);

  input_report_key(hdata->input2, BTN_LEFT,
   data[1] & 0x1);
  input_report_key(hdata->input2, BTN_RIGHT,
   (data[1] & 0x2));
  input_report_key(hdata->input2, BTN_MIDDLE,
   (data[1] & 0x4));

  input_sync(hdata->input2);

  return 1;
 }

 return 0;
}
