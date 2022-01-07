
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ts {int pen_down; int pd_irq; int data_irq; int pd_data_work; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct input_dev {int dummy; } ;


 int WM831X_TCH_ENA ;
 int WM831X_TCH_X_ENA ;
 int WM831X_TCH_Y_ENA ;
 int WM831X_TCH_Z_ENA ;
 int WM831X_TOUCH_CONTROL_1 ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int flush_work (int *) ;
 struct wm831x_ts* input_get_drvdata (struct input_dev*) ;
 int synchronize_irq (int ) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int ) ;

__attribute__((used)) static void wm831x_ts_input_close(struct input_dev *idev)
{
 struct wm831x_ts *wm831x_ts = input_get_drvdata(idev);
 struct wm831x *wm831x = wm831x_ts->wm831x;


 wm831x_set_bits(wm831x, WM831X_TOUCH_CONTROL_1,
   WM831X_TCH_ENA | WM831X_TCH_X_ENA |
   WM831X_TCH_Y_ENA | WM831X_TCH_Z_ENA, 0);




 synchronize_irq(wm831x_ts->data_irq);
 synchronize_irq(wm831x_ts->pd_irq);


 flush_work(&wm831x_ts->pd_data_work);




 if (wm831x_ts->pen_down) {
  disable_irq(wm831x_ts->data_irq);
  enable_irq(wm831x_ts->pd_irq);
  wm831x_ts->pen_down = 0;
 }
}
