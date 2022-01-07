
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_xpad {int mapping; scalar_t__ xtype; } ;
struct input_dev {int dummy; } ;
typedef unsigned char __s16 ;
typedef int __le16 ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_RZ ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BTN_A ;
 int BTN_B ;
 int BTN_MODE ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_THUMBL ;
 int BTN_THUMBR ;
 int BTN_TL ;
 int BTN_TL2 ;
 int BTN_TR ;
 int BTN_TR2 ;
 int BTN_TRIGGER_HAPPY1 ;
 int BTN_TRIGGER_HAPPY2 ;
 int BTN_TRIGGER_HAPPY3 ;
 int BTN_TRIGGER_HAPPY4 ;
 int BTN_X ;
 int BTN_Y ;
 int MAP_DPAD_TO_BUTTONS ;
 int MAP_STICKS_TO_NULL ;
 int MAP_TRIGGERS_TO_BUTTONS ;
 scalar_t__ XTYPE_XBOX360W ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ le16_to_cpup (int *) ;

__attribute__((used)) static void xpad360_process_packet(struct usb_xpad *xpad, struct input_dev *dev,
       u16 cmd, unsigned char *data)
{

 if (data[0] != 0x00)
  return;


 if (xpad->mapping & MAP_DPAD_TO_BUTTONS) {

  input_report_key(dev, BTN_TRIGGER_HAPPY1, data[2] & 0x04);
  input_report_key(dev, BTN_TRIGGER_HAPPY2, data[2] & 0x08);
  input_report_key(dev, BTN_TRIGGER_HAPPY3, data[2] & 0x01);
  input_report_key(dev, BTN_TRIGGER_HAPPY4, data[2] & 0x02);
 }







 if (!(xpad->mapping & MAP_DPAD_TO_BUTTONS) ||
     xpad->xtype == XTYPE_XBOX360W) {
  input_report_abs(dev, ABS_HAT0X,
     !!(data[2] & 0x08) - !!(data[2] & 0x04));
  input_report_abs(dev, ABS_HAT0Y,
     !!(data[2] & 0x02) - !!(data[2] & 0x01));
 }


 input_report_key(dev, BTN_START, data[2] & 0x10);
 input_report_key(dev, BTN_SELECT, data[2] & 0x20);


 input_report_key(dev, BTN_THUMBL, data[2] & 0x40);
 input_report_key(dev, BTN_THUMBR, data[2] & 0x80);


 input_report_key(dev, BTN_A, data[3] & 0x10);
 input_report_key(dev, BTN_B, data[3] & 0x20);
 input_report_key(dev, BTN_X, data[3] & 0x40);
 input_report_key(dev, BTN_Y, data[3] & 0x80);
 input_report_key(dev, BTN_TL, data[3] & 0x01);
 input_report_key(dev, BTN_TR, data[3] & 0x02);
 input_report_key(dev, BTN_MODE, data[3] & 0x04);

 if (!(xpad->mapping & MAP_STICKS_TO_NULL)) {

  input_report_abs(dev, ABS_X,
     (__s16) le16_to_cpup((__le16 *)(data + 6)));
  input_report_abs(dev, ABS_Y,
     ~(__s16) le16_to_cpup((__le16 *)(data + 8)));


  input_report_abs(dev, ABS_RX,
     (__s16) le16_to_cpup((__le16 *)(data + 10)));
  input_report_abs(dev, ABS_RY,
     ~(__s16) le16_to_cpup((__le16 *)(data + 12)));
 }


 if (xpad->mapping & MAP_TRIGGERS_TO_BUTTONS) {
  input_report_key(dev, BTN_TL2, data[4]);
  input_report_key(dev, BTN_TR2, data[5]);
 } else {
  input_report_abs(dev, ABS_Z, data[4]);
  input_report_abs(dev, ABS_RZ, data[5]);
 }

 input_sync(dev);
}
