
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wdt87xx_sys_param {int scaling_factor; int phy_h; int max_x; int max_y; int phy_w; } ;
struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int DIV_ROUND_CLOSEST (int,int ) ;
 size_t FINGER_EV_V1_OFFSET_ID ;
 size_t FINGER_EV_V1_OFFSET_P ;
 size_t FINGER_EV_V1_OFFSET_W ;
 int FINGER_EV_V1_OFFSET_X ;
 int FINGER_EV_V1_OFFSET_Y ;
 int MT_TOOL_FINGER ;
 int dev_dbg (int ,char*,int,int,int) ;
 int get_unaligned_le16 (int*) ;
 int input_mt_report_slot_state (struct input_dev*,int ,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;

__attribute__((used)) static void wdt87xx_report_contact(struct input_dev *input,
       struct wdt87xx_sys_param *param,
       u8 *buf)
{
 int finger_id;
 u32 x, y, w;
 u8 p;

 finger_id = (buf[FINGER_EV_V1_OFFSET_ID] >> 3) - 1;
 if (finger_id < 0)
  return;


 if (!(buf[FINGER_EV_V1_OFFSET_ID] & 0x1))
  return;

 w = buf[FINGER_EV_V1_OFFSET_W];
 w *= param->scaling_factor;

 p = buf[FINGER_EV_V1_OFFSET_P];

 x = get_unaligned_le16(buf + FINGER_EV_V1_OFFSET_X);

 y = get_unaligned_le16(buf + FINGER_EV_V1_OFFSET_Y);
 y = DIV_ROUND_CLOSEST(y * param->phy_h, param->phy_w);


 if (x > param->max_x || y > param->max_y)
  return;

 dev_dbg(input->dev.parent, "tip on (%d), x(%d), y(%d)\n",
  finger_id, x, y);

 input_mt_slot(input, finger_id);
 input_mt_report_slot_state(input, MT_TOOL_FINGER, 1);
 input_report_abs(input, ABS_MT_TOUCH_MAJOR, w);
 input_report_abs(input, ABS_MT_PRESSURE, p);
 input_report_abs(input, ABS_MT_POSITION_X, x);
 input_report_abs(input, ABS_MT_POSITION_Y, y);
}
