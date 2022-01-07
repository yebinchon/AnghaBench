
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001_coord {unsigned int x; unsigned int y; scalar_t__ tsw; } ;
struct w8001 {int type; struct input_dev* touch_dev; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int KEY_RESERVED ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,scalar_t__) ;
 int input_sync (struct input_dev*) ;
 int scale_touch_coordinates (struct w8001*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void report_single_touch(struct w8001 *w8001, struct w8001_coord *coord)
{
 struct input_dev *dev = w8001->touch_dev;
 unsigned int x = coord->x;
 unsigned int y = coord->y;


 scale_touch_coordinates(w8001, &x, &y);

 input_report_abs(dev, ABS_X, x);
 input_report_abs(dev, ABS_Y, y);
 input_report_key(dev, BTN_TOUCH, coord->tsw);

 input_sync(dev);

 w8001->type = coord->tsw ? BTN_TOOL_FINGER : KEY_RESERVED;
}
