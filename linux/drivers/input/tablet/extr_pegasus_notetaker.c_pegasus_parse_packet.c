
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pegasus {unsigned char* data; TYPE_1__* usbdev; int init; struct input_dev* dev; } ;
struct input_dev {int dev; } ;
typedef int s16 ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int ABS_X ;
 int ABS_Y ;



 int BTN_RIGHT ;
 int BTN_TOOL_PEN ;
 int BTN_TOUCH ;
 unsigned char BUTTON_PRESSED ;
 unsigned char PEN_BUTTON_PRESSED ;
 unsigned char PEN_TIP ;

 int dev_warn_once (int *,char*) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int le16_to_cpup (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void pegasus_parse_packet(struct pegasus *pegasus)
{
 unsigned char *data = pegasus->data;
 struct input_dev *dev = pegasus->dev;
 u16 x, y;

 switch (data[0]) {
 case 128:

  if (data[1] == BUTTON_PRESSED)
   schedule_work(&pegasus->init);

  break;


 case 130:
  dev_warn_once(&dev->dev, "Pen battery low\n");


 case 129:
 case 131:
  x = le16_to_cpup((__le16 *)&data[2]);
  y = le16_to_cpup((__le16 *)&data[4]);


  if (x == 0 && y == 0)
   break;

  input_report_key(dev, BTN_TOUCH, data[1] & PEN_TIP);
  input_report_key(dev, BTN_RIGHT, data[1] & PEN_BUTTON_PRESSED);
  input_report_key(dev, BTN_TOOL_PEN, 1);
  input_report_abs(dev, ABS_X, (s16)x);
  input_report_abs(dev, ABS_Y, y);

  input_sync(dev);
  break;

 default:
  dev_warn_once(&pegasus->usbdev->dev,
         "unknown answer from device\n");
 }
}
