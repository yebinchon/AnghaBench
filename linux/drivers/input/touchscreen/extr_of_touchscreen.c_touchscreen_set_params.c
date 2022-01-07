
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {struct input_absinfo* absinfo; int dev; int absbit; } ;
struct input_absinfo {int minimum; int maximum; int fuzz; } ;


 int dev_warn (int *,char*,unsigned long) ;
 int test_bit (unsigned long,int ) ;

__attribute__((used)) static void touchscreen_set_params(struct input_dev *dev,
       unsigned long axis,
       int min, int max, int fuzz)
{
 struct input_absinfo *absinfo;

 if (!test_bit(axis, dev->absbit)) {
  dev_warn(&dev->dev,
    "DT specifies parameters but the axis %lu is not set up\n",
    axis);
  return;
 }

 absinfo = &dev->absinfo[axis];
 absinfo->minimum = min;
 absinfo->maximum = max;
 absinfo->fuzz = fuzz;
}
