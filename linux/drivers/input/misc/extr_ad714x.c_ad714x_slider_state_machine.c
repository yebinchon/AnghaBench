
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad714x_slider_plat {int end_stage; int start_stage; } ;
struct ad714x_slider_drv {int state; int input; int flt_pos; int abs_pos; } ;
struct ad714x_chip {unsigned short h_state; unsigned short c_state; int dev; TYPE_2__* sw; TYPE_1__* hw; } ;
struct TYPE_4__ {struct ad714x_slider_drv* slider; } ;
struct TYPE_3__ {struct ad714x_slider_plat* slider; } ;


 int ABS_X ;

 int BTN_TOUCH ;


 int ad714x_slider_cal_abs_pos (struct ad714x_chip*,int) ;
 int ad714x_slider_cal_flt_pos (struct ad714x_chip*,int) ;
 int ad714x_slider_cal_highest_stage (struct ad714x_chip*,int) ;
 int ad714x_slider_cal_sensor_val (struct ad714x_chip*,int) ;
 int ad714x_slider_use_com_int (struct ad714x_chip*,int) ;
 int ad714x_slider_use_thr_int (struct ad714x_chip*,int) ;
 int dev_dbg (int ,char*,int) ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void ad714x_slider_state_machine(struct ad714x_chip *ad714x, int idx)
{
 struct ad714x_slider_plat *hw = &ad714x->hw->slider[idx];
 struct ad714x_slider_drv *sw = &ad714x->sw->slider[idx];
 unsigned short h_state, c_state;
 unsigned short mask;

 mask = ((1 << (hw->end_stage + 1)) - 1) - ((1 << hw->start_stage) - 1);

 h_state = ad714x->h_state & mask;
 c_state = ad714x->c_state & mask;

 switch (sw->state) {
 case 129:
  if (h_state) {
   sw->state = 128;



   ad714x_slider_use_com_int(ad714x, idx);
   dev_dbg(ad714x->dev, "slider %d touched\n", idx);
  }
  break;

 case 128:
  if (c_state == mask) {
   ad714x_slider_cal_sensor_val(ad714x, idx);
   ad714x_slider_cal_highest_stage(ad714x, idx);
   ad714x_slider_cal_abs_pos(ad714x, idx);
   sw->flt_pos = sw->abs_pos;
   sw->state = 130;
  }
  break;

 case 130:
  if (c_state == mask) {
   if (h_state) {
    ad714x_slider_cal_sensor_val(ad714x, idx);
    ad714x_slider_cal_highest_stage(ad714x, idx);
    ad714x_slider_cal_abs_pos(ad714x, idx);
    ad714x_slider_cal_flt_pos(ad714x, idx);
    input_report_abs(sw->input, ABS_X, sw->flt_pos);
    input_report_key(sw->input, BTN_TOUCH, 1);
   } else {



    ad714x_slider_use_thr_int(ad714x, idx);
    sw->state = 129;
    input_report_key(sw->input, BTN_TOUCH, 0);
    dev_dbg(ad714x->dev, "slider %d released\n",
     idx);
   }
   input_sync(sw->input);
  }
  break;

 default:
  break;
 }
}
