
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001_coord {scalar_t__ tilt_y; scalar_t__ tilt_x; scalar_t__ pen_pressure; scalar_t__ y; scalar_t__ x; } ;
struct w8001 {int id; scalar_t__ max_pen_y; scalar_t__ max_pen_x; int response; struct input_dev* pen_dev; } ;
struct input_dev {int propbit; int keybit; int evbit; } ;


 int ABS_PRESSURE ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int EV_ABS ;
 int EV_KEY ;
 int INPUT_PROP_DIRECT ;
 int W8001_CMD_QUERY ;
 int W8001_PEN_RESOLUTION ;
 int __set_bit (int ,int ) ;
 int input_abs_set_res (struct input_dev*,int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,scalar_t__,int ,int ) ;
 int parse_pen_data (int ,struct w8001_coord*) ;
 int strlcat (char*,char*,size_t) ;
 int w8001_command (struct w8001*,int ,int) ;

__attribute__((used)) static int w8001_setup_pen(struct w8001 *w8001, char *basename,
      size_t basename_sz)
{
 struct input_dev *dev = w8001->pen_dev;
 struct w8001_coord coord;
 int error;


 error = w8001_command(w8001, W8001_CMD_QUERY, 1);
 if (error)
  return error;

 __set_bit(EV_KEY, dev->evbit);
 __set_bit(EV_ABS, dev->evbit);
 __set_bit(BTN_TOUCH, dev->keybit);
 __set_bit(BTN_TOOL_PEN, dev->keybit);
 __set_bit(BTN_TOOL_RUBBER, dev->keybit);
 __set_bit(BTN_STYLUS, dev->keybit);
 __set_bit(BTN_STYLUS2, dev->keybit);
 __set_bit(INPUT_PROP_DIRECT, dev->propbit);

 parse_pen_data(w8001->response, &coord);
 w8001->max_pen_x = coord.x;
 w8001->max_pen_y = coord.y;

 input_set_abs_params(dev, ABS_X, 0, coord.x, 0, 0);
 input_set_abs_params(dev, ABS_Y, 0, coord.y, 0, 0);
 input_abs_set_res(dev, ABS_X, W8001_PEN_RESOLUTION);
 input_abs_set_res(dev, ABS_Y, W8001_PEN_RESOLUTION);
 input_set_abs_params(dev, ABS_PRESSURE, 0, coord.pen_pressure, 0, 0);
 if (coord.tilt_x && coord.tilt_y) {
  input_set_abs_params(dev, ABS_TILT_X, 0, coord.tilt_x, 0, 0);
  input_set_abs_params(dev, ABS_TILT_Y, 0, coord.tilt_y, 0, 0);
 }

 w8001->id = 0x90;
 strlcat(basename, " Penabled", basename_sz);

 return 0;
}
