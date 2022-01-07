
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm {int* data; scalar_t__ packetsize; scalar_t__ idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void pm_parse_9000(struct pm *pm)
{
 struct input_dev *dev = pm->dev;

 if ((pm->data[0] & 0x80) && pm->packetsize == ++pm->idx) {
  input_report_abs(dev, ABS_X, pm->data[1] * 128 + pm->data[2]);
  input_report_abs(dev, ABS_Y, pm->data[3] * 128 + pm->data[4]);
  input_report_key(dev, BTN_TOUCH, !!(pm->data[0] & 0x40));
  input_sync(dev);
  pm->idx = 0;
 }
}
