
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auo_point_t {scalar_t__ coord_x; scalar_t__ coord_y; scalar_t__ area_major; scalar_t__ area_minor; scalar_t__ orientation; } ;
struct auo_pixcir_ts_platdata {int gpio_int; } ;
struct auo_pixcir_ts {int stopped; int wait; scalar_t__ touch_ind_mode; int input; struct auo_pixcir_ts_platdata* pdata; } ;
typedef int irqreturn_t ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_X ;
 int ABS_Y ;
 int AUO_PIXCIR_PENUP_TIMEOUT_MS ;
 int AUO_PIXCIR_REPORT_POINTS ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 int auo_pixcir_collect_data (struct auo_pixcir_ts*,struct auo_point_t*) ;
 scalar_t__ gpio_get_value (int ) ;
 int input_mt_sync (int ) ;
 int input_report_abs (int ,int ,scalar_t__) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t auo_pixcir_interrupt(int irq, void *dev_id)
{
 struct auo_pixcir_ts *ts = dev_id;
 const struct auo_pixcir_ts_platdata *pdata = ts->pdata;
 struct auo_point_t point[AUO_PIXCIR_REPORT_POINTS];
 int i;
 int ret;
 int fingers = 0;
 int abs = -1;

 while (!ts->stopped) {


  if (ts->touch_ind_mode) {
   if (gpio_get_value(pdata->gpio_int) == 0) {
    input_mt_sync(ts->input);
    input_report_key(ts->input, BTN_TOUCH, 0);
    input_sync(ts->input);
    break;
   }
  }

  ret = auo_pixcir_collect_data(ts, point);
  if (ret < 0) {

   if (!ts->touch_ind_mode)
    break;

   wait_event_timeout(ts->wait, ts->stopped,
    msecs_to_jiffies(AUO_PIXCIR_PENUP_TIMEOUT_MS));
   continue;
  }

  for (i = 0; i < AUO_PIXCIR_REPORT_POINTS; i++) {
   if (point[i].coord_x > 0 || point[i].coord_y > 0) {
    input_report_abs(ts->input, ABS_MT_POSITION_X,
       point[i].coord_x);
    input_report_abs(ts->input, ABS_MT_POSITION_Y,
       point[i].coord_y);
    input_report_abs(ts->input, ABS_MT_TOUCH_MAJOR,
       point[i].area_major);
    input_report_abs(ts->input, ABS_MT_TOUCH_MINOR,
       point[i].area_minor);
    input_report_abs(ts->input, ABS_MT_ORIENTATION,
       point[i].orientation);
    input_mt_sync(ts->input);


    if (fingers == 0)
     abs = i;




    fingers++;
   }
  }

  input_report_key(ts->input, BTN_TOUCH, fingers > 0);

  if (abs > -1) {
   input_report_abs(ts->input, ABS_X, point[abs].coord_x);
   input_report_abs(ts->input, ABS_Y, point[abs].coord_y);
  }

  input_sync(ts->input);


  if (!ts->touch_ind_mode)
   break;

  wait_event_timeout(ts->wait, ts->stopped,
     msecs_to_jiffies(AUO_PIXCIR_PENUP_TIMEOUT_MS));
 }

 return IRQ_HANDLED;
}
