
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hidpp_touchpad_raw_xy {int end_of_frame; int spurious_flag; int finger_count; int button; int * fingers; } ;
struct hidpp_device {int dummy; } ;


 int hidpp_touchpad_touch_event (int*,int *) ;
 int memset (struct hidpp_touchpad_raw_xy*,int ,int) ;

__attribute__((used)) static void hidpp_touchpad_raw_xy_event(struct hidpp_device *hidpp_dev,
  u8 *data, struct hidpp_touchpad_raw_xy *raw_xy)
{
 memset(raw_xy, 0, sizeof(struct hidpp_touchpad_raw_xy));
 raw_xy->end_of_frame = data[8] & 0x01;
 raw_xy->spurious_flag = (data[8] >> 1) & 0x01;
 raw_xy->finger_count = data[15] & 0x0f;
 raw_xy->button = (data[8] >> 2) & 0x01;

 if (raw_xy->finger_count) {
  hidpp_touchpad_touch_event(&data[2], &raw_xy->fingers[0]);
  hidpp_touchpad_touch_event(&data[9], &raw_xy->fingers[1]);
 }
}
