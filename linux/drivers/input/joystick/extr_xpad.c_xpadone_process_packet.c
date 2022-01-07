
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_xpad {int mapping; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef unsigned char __u16 ;
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
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ le16_to_cpup (int *) ;
 int xpadone_ack_mode_report (struct usb_xpad*,unsigned char) ;

__attribute__((used)) static void xpadone_process_packet(struct usb_xpad *xpad, u16 cmd, unsigned char *data)
{
 struct input_dev *dev = xpad->dev;


 if (data[0] == 0X07) {





  if (data[1] == 0x30)
   xpadone_ack_mode_report(xpad, data[2]);

  input_report_key(dev, BTN_MODE, data[4] & 0x01);
  input_sync(dev);
  return;
 }

 else if (data[0] != 0X20)
  return;


 input_report_key(dev, BTN_START, data[4] & 0x04);
 input_report_key(dev, BTN_SELECT, data[4] & 0x08);


 input_report_key(dev, BTN_A, data[4] & 0x10);
 input_report_key(dev, BTN_B, data[4] & 0x20);
 input_report_key(dev, BTN_X, data[4] & 0x40);
 input_report_key(dev, BTN_Y, data[4] & 0x80);


 if (xpad->mapping & MAP_DPAD_TO_BUTTONS) {

  input_report_key(dev, BTN_TRIGGER_HAPPY1, data[5] & 0x04);
  input_report_key(dev, BTN_TRIGGER_HAPPY2, data[5] & 0x08);
  input_report_key(dev, BTN_TRIGGER_HAPPY3, data[5] & 0x01);
  input_report_key(dev, BTN_TRIGGER_HAPPY4, data[5] & 0x02);
 } else {
  input_report_abs(dev, ABS_HAT0X,
     !!(data[5] & 0x08) - !!(data[5] & 0x04));
  input_report_abs(dev, ABS_HAT0Y,
     !!(data[5] & 0x02) - !!(data[5] & 0x01));
 }


 input_report_key(dev, BTN_TL, data[5] & 0x10);
 input_report_key(dev, BTN_TR, data[5] & 0x20);


 input_report_key(dev, BTN_THUMBL, data[5] & 0x40);
 input_report_key(dev, BTN_THUMBR, data[5] & 0x80);

 if (!(xpad->mapping & MAP_STICKS_TO_NULL)) {

  input_report_abs(dev, ABS_X,
     (__s16) le16_to_cpup((__le16 *)(data + 10)));
  input_report_abs(dev, ABS_Y,
     ~(__s16) le16_to_cpup((__le16 *)(data + 12)));


  input_report_abs(dev, ABS_RX,
     (__s16) le16_to_cpup((__le16 *)(data + 14)));
  input_report_abs(dev, ABS_RY,
     ~(__s16) le16_to_cpup((__le16 *)(data + 16)));
 }


 if (xpad->mapping & MAP_TRIGGERS_TO_BUTTONS) {
  input_report_key(dev, BTN_TL2,
     (__u16) le16_to_cpup((__le16 *)(data + 6)));
  input_report_key(dev, BTN_TR2,
     (__u16) le16_to_cpup((__le16 *)(data + 8)));
 } else {
  input_report_abs(dev, ABS_Z,
     (__u16) le16_to_cpup((__le16 *)(data + 6)));
  input_report_abs(dev, ABS_RZ,
     (__u16) le16_to_cpup((__le16 *)(data + 8)));
 }

 input_sync(dev);
}
