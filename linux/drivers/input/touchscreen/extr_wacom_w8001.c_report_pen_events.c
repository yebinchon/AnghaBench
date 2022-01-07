
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001_coord {int rdy; int f1; int tsw; int pen_pressure; int y; int x; int f2; } ;
struct w8001 {int type; struct input_dev* pen_dev; } ;
struct input_dev {int dummy; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int const BTN_STYLUS ;
 int const BTN_STYLUS2 ;

 int const BTN_TOOL_PEN ;

 int const BTN_TOUCH ;

 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int const,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void report_pen_events(struct w8001 *w8001, struct w8001_coord *coord)
{
 struct input_dev *dev = w8001->pen_dev;
 switch (w8001->type) {
 case 129:
  if (!coord->f2) {
   input_report_abs(dev, ABS_PRESSURE, 0);
   input_report_key(dev, BTN_TOUCH, 0);
   input_report_key(dev, BTN_STYLUS, 0);
   input_report_key(dev, BTN_STYLUS2, 0);
   input_report_key(dev, 129, 0);
   input_sync(dev);
   w8001->type = BTN_TOOL_PEN;
  }
  break;

 case 130:
 case 128:
  w8001->type = coord->f2 ? 129 : BTN_TOOL_PEN;
  break;

 default:
  input_report_key(dev, BTN_STYLUS2, coord->f2);
  break;
 }

 input_report_abs(dev, ABS_X, coord->x);
 input_report_abs(dev, ABS_Y, coord->y);
 input_report_abs(dev, ABS_PRESSURE, coord->pen_pressure);
 input_report_key(dev, BTN_TOUCH, coord->tsw);
 input_report_key(dev, BTN_STYLUS, coord->f1);
 input_report_key(dev, w8001->type, coord->rdy);
 input_sync(dev);

 if (!coord->rdy)
  w8001->type = 128;
}
