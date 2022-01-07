
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ts {int pen_down; int pd_data_work; scalar_t__ pressure; int pd_irq; struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int WM831X_INTERRUPT_STATUS_1 ;
 int WM831X_TCHPD_EINT ;
 int WM831X_TCH_X_ENA ;
 int WM831X_TCH_Y_ENA ;
 int WM831X_TCH_Z_ENA ;
 int WM831X_TOUCH_CONTROL_1 ;
 int dev_dbg (int ,char*) ;
 int disable_irq_nosync (int ) ;
 int schedule_work (int *) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int) ;

__attribute__((used)) static irqreturn_t wm831x_ts_pen_down_irq(int irq, void *irq_data)
{
 struct wm831x_ts *wm831x_ts = irq_data;
 struct wm831x *wm831x = wm831x_ts->wm831x;
 int ena = 0;

 if (wm831x_ts->pen_down)
  return IRQ_HANDLED;

 disable_irq_nosync(wm831x_ts->pd_irq);


 if (wm831x_ts->pressure)
  ena |= WM831X_TCH_Z_ENA;

 wm831x_set_bits(wm831x, WM831X_TOUCH_CONTROL_1,
   WM831X_TCH_X_ENA | WM831X_TCH_Y_ENA | WM831X_TCH_Z_ENA,
   WM831X_TCH_X_ENA | WM831X_TCH_Y_ENA | ena);

 wm831x_set_bits(wm831x, WM831X_INTERRUPT_STATUS_1,
   WM831X_TCHPD_EINT, WM831X_TCHPD_EINT);

 wm831x_ts->pen_down = 1;


 dev_dbg(wm831x->dev, "IRQ PD->DATA\n");
 schedule_work(&wm831x_ts->pd_data_work);

 return IRQ_HANDLED;
}
