
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stinger {unsigned char* data; int idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_A ;
 int BTN_B ;
 int BTN_C ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_TL ;
 int BTN_TR ;
 int BTN_X ;
 int BTN_Y ;
 int BTN_Z ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void stinger_process_packet(struct stinger *stinger)
{
 struct input_dev *dev = stinger->dev;
 unsigned char *data = stinger->data;

 if (!stinger->idx) return;

 input_report_key(dev, BTN_A, ((data[0] & 0x20) >> 5));
 input_report_key(dev, BTN_B, ((data[0] & 0x10) >> 4));
 input_report_key(dev, BTN_C, ((data[0] & 0x08) >> 3));
 input_report_key(dev, BTN_X, ((data[0] & 0x04) >> 2));
 input_report_key(dev, BTN_Y, ((data[3] & 0x20) >> 5));
 input_report_key(dev, BTN_Z, ((data[3] & 0x10) >> 4));
 input_report_key(dev, BTN_TL, ((data[3] & 0x08) >> 3));
 input_report_key(dev, BTN_TR, ((data[3] & 0x04) >> 2));
 input_report_key(dev, BTN_SELECT, ((data[3] & 0x02) >> 1));
 input_report_key(dev, BTN_START, (data[3] & 0x01));

 input_report_abs(dev, ABS_X, (data[1] & 0x3F) - ((data[0] & 0x01) << 6));
 input_report_abs(dev, ABS_Y, ((data[0] & 0x02) << 5) - (data[2] & 0x3F));

 input_sync(dev);

 return;
}
