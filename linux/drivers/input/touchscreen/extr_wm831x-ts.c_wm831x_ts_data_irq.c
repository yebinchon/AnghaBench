
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x_ts {int pen_down; int input_dev; int pd_data_work; scalar_t__ pressure; int data_irq; struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
typedef int irqreturn_t ;





 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WM831X_INTERRUPT_STATUS_1 ;
 int WM831X_TCHDATA_EINT ;
 int WM831X_TCH_DATA_MASK ;
 int WM831X_TCH_PD ;
 int WM831X_TCH_X_ENA ;
 int WM831X_TCH_Y_ENA ;
 int WM831X_TCH_Z_ENA ;
 int WM831X_TOUCH_CONTROL_1 ;
 int WM831X_TOUCH_DATA_X ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int disable_irq_nosync (int ) ;
 int input_report_abs (int ,int const,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int schedule_work (int *) ;
 int wm831x_bulk_read (struct wm831x*,int ,int,int*) ;
 int wm831x_set_bits (struct wm831x*,int ,int,int) ;

__attribute__((used)) static irqreturn_t wm831x_ts_data_irq(int irq, void *irq_data)
{
 struct wm831x_ts *wm831x_ts = irq_data;
 struct wm831x *wm831x = wm831x_ts->wm831x;
 static int data_types[] = { 129, 128, 130 };
 u16 data[3];
 int count;
 int i, ret;

 if (wm831x_ts->pressure)
  count = 3;
 else
  count = 2;

 wm831x_set_bits(wm831x, WM831X_INTERRUPT_STATUS_1,
   WM831X_TCHDATA_EINT, WM831X_TCHDATA_EINT);

 ret = wm831x_bulk_read(wm831x, WM831X_TOUCH_DATA_X, count,
          data);
 if (ret != 0) {
  dev_err(wm831x->dev, "Failed to read touch data: %d\n",
   ret);
  return IRQ_NONE;
 }





 wm831x_ts->pen_down = 1;
 for (i = 0; i < count; i++) {
  if (!(data[i] & WM831X_TCH_PD)) {
   wm831x_ts->pen_down = 0;
   continue;
  }
  input_report_abs(wm831x_ts->input_dev, data_types[i],
     data[i] & WM831X_TCH_DATA_MASK);
 }

 if (!wm831x_ts->pen_down) {

  dev_dbg(wm831x->dev, "IRQ DATA->PD\n");

  disable_irq_nosync(wm831x_ts->data_irq);


  wm831x_set_bits(wm831x, WM831X_TOUCH_CONTROL_1,
    WM831X_TCH_X_ENA | WM831X_TCH_Y_ENA |
    WM831X_TCH_Z_ENA, 0);


  wm831x_set_bits(wm831x, WM831X_INTERRUPT_STATUS_1,
    WM831X_TCHDATA_EINT, WM831X_TCHDATA_EINT);

  wm831x_bulk_read(wm831x, WM831X_TOUCH_DATA_X, count, data);

  if (wm831x_ts->pressure)
   input_report_abs(wm831x_ts->input_dev,
      130, 0);

  input_report_key(wm831x_ts->input_dev, BTN_TOUCH, 0);

  schedule_work(&wm831x_ts->pd_data_work);
 } else {
  input_report_key(wm831x_ts->input_dev, BTN_TOUCH, 1);
 }

 input_sync(wm831x_ts->input_dev);

 return IRQ_HANDLED;
}
