
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct touchscreen_properties {int dummy; } ;
struct input_dev {int dummy; } ;


 int const BIT (int ) ;
 int EXC3000_LEN_POINT ;
 int MT_TOOL_FINGER ;
 int get_unaligned_le16 (int const*) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int const) ;
 int touchscreen_report_pos (struct input_dev*,struct touchscreen_properties*,int ,int ,int) ;

__attribute__((used)) static void exc3000_report_slots(struct input_dev *input,
     struct touchscreen_properties *prop,
     const u8 *buf, int num)
{
 for (; num--; buf += EXC3000_LEN_POINT) {
  if (buf[0] & BIT(0)) {
   input_mt_slot(input, buf[1]);
   input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
   touchscreen_report_pos(input, prop,
            get_unaligned_le16(buf + 2),
            get_unaligned_le16(buf + 4),
            1);
  }
 }
}
