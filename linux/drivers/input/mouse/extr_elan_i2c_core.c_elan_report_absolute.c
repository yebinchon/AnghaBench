
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct input_dev {int dummy; } ;
struct elan_tp_data {struct input_dev* input; } ;


 int ABS_DISTANCE ;
 int BIT (int) ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int ETP_FINGER_DATA_LEN ;
 size_t ETP_FINGER_DATA_OFFSET ;
 size_t ETP_HOVER_INFO_OFFSET ;
 int ETP_MAX_FINGERS ;
 size_t ETP_TOUCH_INFO_OFFSET ;
 int elan_report_contact (struct elan_tp_data*,int,int,int*) ;
 int input_mt_report_pointer_emulation (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void elan_report_absolute(struct elan_tp_data *data, u8 *packet)
{
 struct input_dev *input = data->input;
 u8 *finger_data = &packet[ETP_FINGER_DATA_OFFSET];
 int i;
 u8 tp_info = packet[ETP_TOUCH_INFO_OFFSET];
 u8 hover_info = packet[ETP_HOVER_INFO_OFFSET];
 bool contact_valid, hover_event;

 hover_event = hover_info & 0x40;
 for (i = 0; i < ETP_MAX_FINGERS; i++) {
  contact_valid = tp_info & (1U << (3 + i));
  elan_report_contact(data, i, contact_valid, finger_data);

  if (contact_valid)
   finger_data += ETP_FINGER_DATA_LEN;
 }

 input_report_key(input, BTN_LEFT, tp_info & BIT(0));
 input_report_key(input, BTN_MIDDLE, tp_info & BIT(2));
 input_report_key(input, BTN_RIGHT, tp_info & BIT(1));
 input_report_abs(input, ABS_DISTANCE, hover_event != 0);
 input_mt_report_pointer_emulation(input, 1);
 input_sync(input);
}
