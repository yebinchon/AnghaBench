
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct navpoint {int* data; int dev; int input; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int dev_warn (int ,char*,int,int) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void navpoint_packet(struct navpoint *navpoint)
{
 int finger;
 int gesture;
 int x, y, z;

 switch (navpoint->data[0]) {
 case 0xff:
 case 0x00:
  break;

 case 0x0e:
  finger = (navpoint->data[1] & 0x01);
  gesture = (navpoint->data[1] & 0x02);
  x = ((navpoint->data[2] & 0x1f) << 8) | navpoint->data[3];
  y = ((navpoint->data[4] & 0x1f) << 8) | navpoint->data[5];
  z = navpoint->data[6];
  input_report_key(navpoint->input, BTN_TOUCH, finger);
  input_report_abs(navpoint->input, ABS_X, x);
  input_report_abs(navpoint->input, ABS_Y, y);
  input_report_abs(navpoint->input, ABS_PRESSURE, z);
  input_report_key(navpoint->input, BTN_TOOL_FINGER, finger);
  input_report_key(navpoint->input, BTN_LEFT, gesture);
  input_sync(navpoint->input);
  break;

 case 0x19:
  if ((navpoint->data[1] & 0xf0) == 0x10)
   break;

 default:
  dev_warn(navpoint->dev,
    "spurious packet: data=0x%02x,0x%02x,...\n",
    navpoint->data[0], navpoint->data[1]);
  break;
 }
}
