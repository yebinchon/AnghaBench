
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cyapa_touch {int id; int xy_hi; int x_lo; int y_lo; int pressure; } ;
struct cyapa_reg_data {int finger_btn; struct cyapa_touch* touches; } ;
struct cyapa {int btn_capability; struct input_dev* input; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int CAPABILITY_LEFT_BTN_MASK ;
 int CAPABILITY_MIDDLE_BTN_MASK ;
 int CAPABILITY_RIGHT_BTN_MASK ;
 int MT_TOOL_FINGER ;
 int OP_DATA_LEFT_BTN ;
 int OP_DATA_MIDDLE_BTN ;
 int OP_DATA_RIGHT_BTN ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_mt_sync_frame (struct input_dev*) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static int cyapa_gen3_event_process(struct cyapa *cyapa,
        struct cyapa_reg_data *data)
{
 struct input_dev *input = cyapa->input;
 int num_fingers;
 int i;

 num_fingers = (data->finger_btn >> 4) & 0x0f;
 for (i = 0; i < num_fingers; i++) {
  const struct cyapa_touch *touch = &data->touches[i];

  int slot = touch->id - 1;

  input_mt_slot(input, slot);
  input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
  input_report_abs(input, ABS_MT_POSITION_X,
     ((touch->xy_hi & 0xf0) << 4) | touch->x_lo);
  input_report_abs(input, ABS_MT_POSITION_Y,
     ((touch->xy_hi & 0x0f) << 8) | touch->y_lo);
  input_report_abs(input, ABS_MT_PRESSURE, touch->pressure);
 }

 input_mt_sync_frame(input);

 if (cyapa->btn_capability & CAPABILITY_LEFT_BTN_MASK)
  input_report_key(input, BTN_LEFT,
     !!(data->finger_btn & OP_DATA_LEFT_BTN));
 if (cyapa->btn_capability & CAPABILITY_MIDDLE_BTN_MASK)
  input_report_key(input, BTN_MIDDLE,
     !!(data->finger_btn & OP_DATA_MIDDLE_BTN));
 if (cyapa->btn_capability & CAPABILITY_RIGHT_BTN_MASK)
  input_report_key(input, BTN_RIGHT,
     !!(data->finger_btn & OP_DATA_RIGHT_BTN));
 input_sync(input);

 return 0;
}
