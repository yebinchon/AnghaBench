
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad714x_touchpad_plat {int x_end_stage; int x_start_stage; int y_end_stage; int y_start_stage; } ;
struct ad714x_touchpad_drv {int state; int input; int y_flt_pos; int x_flt_pos; int y_abs_pos; int x_abs_pos; } ;
struct ad714x_chip {unsigned short h_state; unsigned short c_state; int dev; TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_touchpad_drv* touchpad; } ;
struct TYPE_3__ {struct ad714x_touchpad_plat* touchpad; } ;


 int ABS_X ;
 int ABS_Y ;

 int BTN_TOUCH ;


 int dev_dbg (int ,char*,int) ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int touchpad_cal_abs_pos (struct ad714x_chip*,int) ;
 int touchpad_cal_flt_pos (struct ad714x_chip*,int) ;
 int touchpad_cal_highest_stage (struct ad714x_chip*,int) ;
 int touchpad_cal_sensor_val (struct ad714x_chip*,int) ;
 int touchpad_check_endpoint (struct ad714x_chip*,int) ;
 int touchpad_check_second_peak (struct ad714x_chip*,int) ;
 int touchpad_use_com_int (struct ad714x_chip*,int) ;
 int touchpad_use_thr_int (struct ad714x_chip*,int) ;

__attribute__((used)) static void ad714x_touchpad_state_machine(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_touchpad_plat *hw = &ad714x->hw->touchpad[idx];
 struct ad714x_touchpad_drv *sw = &ad714x->sw->touchpad[idx];
 unsigned short h_state, c_state;
 unsigned short mask;

 mask = (((1 << (hw->x_end_stage + 1)) - 1) -
  ((1 << hw->x_start_stage) - 1)) +
  (((1 << (hw->y_end_stage + 1)) - 1) -
  ((1 << hw->y_start_stage) - 1));

 h_state = ad714x->h_state & mask;
 c_state = ad714x->c_state & mask;

 switch (sw->state) {
 case 129:
  if (h_state) {
   sw->state = 128;



   touchpad_use_com_int(ad714x, idx);
   dev_dbg(ad714x->dev, "touchpad %d touched\n", idx);
  }
  break;

 case 128:
  if (c_state == mask) {
   touchpad_cal_sensor_val(ad714x, idx);
   touchpad_cal_highest_stage(ad714x, idx);
   if ((!touchpad_check_second_peak(ad714x, idx)) &&
    (!touchpad_check_endpoint(ad714x, idx))) {
    dev_dbg(ad714x->dev,
     "touchpad%d, 2 fingers or endpoint\n",
     idx);
    touchpad_cal_abs_pos(ad714x, idx);
    sw->x_flt_pos = sw->x_abs_pos;
    sw->y_flt_pos = sw->y_abs_pos;
    sw->state = 130;
   }
  }
  break;

 case 130:
  if (c_state == mask) {
   if (h_state) {
    touchpad_cal_sensor_val(ad714x, idx);
    touchpad_cal_highest_stage(ad714x, idx);
    if ((!touchpad_check_second_peak(ad714x, idx))
      && (!touchpad_check_endpoint(ad714x, idx))) {
     touchpad_cal_abs_pos(ad714x, idx);
     touchpad_cal_flt_pos(ad714x, idx);
     input_report_abs(sw->input, ABS_X,
      sw->x_flt_pos);
     input_report_abs(sw->input, ABS_Y,
      sw->y_flt_pos);
     input_report_key(sw->input, BTN_TOUCH,
      1);
    }
   } else {



    touchpad_use_thr_int(ad714x, idx);
    sw->state = 129;
    input_report_key(sw->input, BTN_TOUCH, 0);
    dev_dbg(ad714x->dev, "touchpad %d released\n",
     idx);
   }
   input_sync(sw->input);
  }
  break;

 default:
  break;
 }
}
