
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {int xtype; } ;
struct input_dev {int dummy; } ;
 int XTYPE_XBOXONE ;
 struct usb_xpad* input_get_drvdata (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,short,int,int,int,int) ;

__attribute__((used)) static void xpad_set_up_abs(struct input_dev *input_dev, signed short abs)
{
 struct usb_xpad *xpad = input_get_drvdata(input_dev);

 switch (abs) {
 case 130:
 case 129:
 case 133:
 case 132:
  input_set_abs_params(input_dev, abs, -32768, 32767, 16, 128);
  break;
 case 128:
 case 131:
  if (xpad->xtype == XTYPE_XBOXONE)
   input_set_abs_params(input_dev, abs, 0, 1023, 0, 0);
  else
   input_set_abs_params(input_dev, abs, 0, 255, 0, 0);
  break;
 case 135:
 case 134:
  input_set_abs_params(input_dev, abs, -1, 1, 0, 0);
  break;
 default:
  input_set_abs_params(input_dev, abs, 0, 0, 0, 0);
  break;
 }
}
