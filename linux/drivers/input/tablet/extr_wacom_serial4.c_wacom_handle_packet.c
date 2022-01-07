
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wacom {int* data; int extra_z_bits; int eraser_mask; unsigned int tool; int dev; } ;
struct TYPE_2__ {int device_id; int input_id; } ;


 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOUCH ;
 unsigned int CURSOR ;
 unsigned int ERASER ;
 int REL_WHEEL ;
 unsigned int STYLUS ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_report_rel (int ,int ,int) ;
 int input_sync (int ) ;
 TYPE_1__* tools ;

__attribute__((used)) static void wacom_handle_packet(struct wacom *wacom)
{
 u8 in_proximity_p, stylus_p, button;
 unsigned int tool;
 int x, y, z;

 in_proximity_p = wacom->data[0] & 0x40;
 stylus_p = wacom->data[0] & 0x20;
 button = (wacom->data[3] & 0x78) >> 3;
 x = (wacom->data[0] & 3) << 14 | wacom->data[1]<<7 | wacom->data[2];
 y = (wacom->data[3] & 3) << 14 | wacom->data[4]<<7 | wacom->data[5];

 if (in_proximity_p && stylus_p) {
  z = wacom->data[6] & 0x7f;
  if (wacom->extra_z_bits >= 1)
   z = z << 1 | (wacom->data[3] & 0x4) >> 2;
  if (wacom->extra_z_bits > 1)
   z = z << 1 | (wacom->data[0] & 0x4) >> 2;
  z = z ^ (0x40 << wacom->extra_z_bits);
 } else {
  z = -1;
 }

 if (stylus_p)
  tool = (button & wacom->eraser_mask) ? ERASER : STYLUS;
 else
  tool = CURSOR;

 if (tool != wacom->tool && wacom->tool != 0) {
  input_report_key(wacom->dev, tools[wacom->tool].input_id, 0);
  input_sync(wacom->dev);
 }
 wacom->tool = tool;

 input_report_key(wacom->dev, tools[tool].input_id, in_proximity_p);
 input_report_abs(wacom->dev, ABS_MISC,
    in_proximity_p ? tools[tool].device_id : 0);
 input_report_abs(wacom->dev, ABS_X, x);
 input_report_abs(wacom->dev, ABS_Y, y);
 input_report_abs(wacom->dev, ABS_PRESSURE, z);
 if (stylus_p) {
  input_report_key(wacom->dev, BTN_TOUCH, button & 1);
  input_report_key(wacom->dev, BTN_STYLUS, button & 2);
  input_report_key(wacom->dev, BTN_STYLUS2, button & 4);
 } else {
  input_report_key(wacom->dev, BTN_LEFT, button & 1);
  input_report_key(wacom->dev, BTN_RIGHT, button & 2);
  input_report_key(wacom->dev, BTN_MIDDLE, button & 4);

  z = (wacom->data[6] & 0x30) >> 4;
  if (wacom->data[6] & 0x40)
   z = -z;
  input_report_rel(wacom->dev, REL_WHEEL, z);
 }
 input_sync(wacom->dev);
}
