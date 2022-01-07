
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct t4_input_report {int button; TYPE_1__* contact; } ;
struct alps_dev {int max_fingers; unsigned int y_max; unsigned int y_min; int input; } ;
struct TYPE_2__ {int x_hi; int x_lo; int y_hi; int y_lo; int palm; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int BTN_LEFT ;
 int MT_TOOL_FINGER ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_report_abs (int ,int ,unsigned int) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static int t4_raw_event(struct alps_dev *hdata, u8 *data, int size)
{
 unsigned int x, y, z;
 int i;
 struct t4_input_report *p_report = (struct t4_input_report *)data;

 if (!data)
  return 0;
 for (i = 0; i < hdata->max_fingers; i++) {
  x = p_report->contact[i].x_hi << 8 | p_report->contact[i].x_lo;
  y = p_report->contact[i].y_hi << 8 | p_report->contact[i].y_lo;
  y = hdata->y_max - y + hdata->y_min;
  z = (p_report->contact[i].palm < 0x80 &&
   p_report->contact[i].palm > 0) * 62;
  if (x == 0xffff) {
   x = 0;
   y = 0;
   z = 0;
  }
  input_mt_slot(hdata->input, i);

  input_mt_report_slot_state(hdata->input,
   MT_TOOL_FINGER, z != 0);

  if (!z)
   continue;

  input_report_abs(hdata->input, ABS_MT_POSITION_X, x);
  input_report_abs(hdata->input, ABS_MT_POSITION_Y, y);
  input_report_abs(hdata->input, ABS_MT_PRESSURE, z);
 }
 input_mt_sync_frame(hdata->input);

 input_report_key(hdata->input, BTN_LEFT, p_report->button);

 input_sync(hdata->input);
 return 1;
}
