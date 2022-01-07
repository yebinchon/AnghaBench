
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface3_ts_data_pen {int status; int pressure; int y; int x; } ;
struct surface3_ts_data {int pen_tool; struct input_dev* pen_input_dev; } ;
struct input_dev {int dummy; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_STYLUS ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int get_unaligned_le16 (int *) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void surface3_spi_report_pen(struct surface3_ts_data *ts_data,
        struct surface3_ts_data_pen *pen)
{
 struct input_dev *dev = ts_data->pen_input_dev;
 int st = pen->status;
 int prox = st & 0x01;
 int rubber = st & 0x18;
 int tool = (prox && rubber) ? BTN_TOOL_RUBBER : BTN_TOOL_PEN;


 if (ts_data->pen_tool != tool) {
  input_report_key(dev, ts_data->pen_tool, 0);
  input_sync(dev);
  ts_data->pen_tool = tool;
 }

 input_report_key(dev, BTN_TOUCH, st & 0x12);

 input_report_key(dev, ts_data->pen_tool, prox);

 if (st) {
  input_report_key(dev,
     BTN_STYLUS,
     st & 0x04);

  input_report_abs(dev,
     ABS_X,
     get_unaligned_le16(&pen->x));
  input_report_abs(dev,
     ABS_Y,
     get_unaligned_le16(&pen->y));
  input_report_abs(dev,
     ABS_PRESSURE,
     get_unaligned_le16(&pen->pressure));
 }
}
