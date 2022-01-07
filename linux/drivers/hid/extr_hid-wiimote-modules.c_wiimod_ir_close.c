
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_data {int dummy; } ;
struct input_dev {int dummy; } ;


 struct wiimote_data* input_get_drvdata (struct input_dev*) ;
 int wiimod_ir_change (struct wiimote_data*,int ) ;

__attribute__((used)) static void wiimod_ir_close(struct input_dev *dev)
{
 struct wiimote_data *wdata = input_get_drvdata(dev);

 wiimod_ir_change(wdata, 0);
}
