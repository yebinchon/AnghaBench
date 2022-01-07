
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tsc_ser {int* data; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void tsc_process_data(struct tsc_ser *ptsc)
{
 struct input_dev *dev = ptsc->dev;
 u8 *data = ptsc->data;
 u32 x;
 u32 y;

 x = ((data[1] & 0x03) << 8) | data[2];
 y = ((data[3] & 0x03) << 8) | data[4];

 input_report_abs(dev, ABS_X, x);
 input_report_abs(dev, ABS_Y, y);
 input_report_key(dev, BTN_TOUCH, 1);

 input_sync(dev);
}
