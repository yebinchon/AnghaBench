
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct elo {unsigned char* data; size_t idx; struct input_dev* dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void elo_process_data_3(struct elo *elo, unsigned char data)
{
 struct input_dev *dev = elo->dev;

 elo->data[elo->idx] = data;

 switch (elo->idx++) {

 case 0:
  if ((data & 0x7f) != 0x01)
   elo->idx = 0;
  break;
 case 2:
  input_report_key(dev, BTN_TOUCH, !(elo->data[1] & 0x80));
  input_report_abs(dev, ABS_X, elo->data[1]);
  input_report_abs(dev, ABS_Y, elo->data[2]);
  input_sync(dev);
  elo->idx = 0;
  break;
 }
}
