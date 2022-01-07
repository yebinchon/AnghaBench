
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl34x_platform_data {int tap_axis_control; int orientation_enable; scalar_t__ fifo_mode; int * ev_codes_orient_3d; int * ev_codes_orient_2d; scalar_t__ ev_code_act_inactivity; int ev_code_ff; } ;
struct adxl34x {int orient2d_saved; int orient3d_saved; int input; scalar_t__ fifo_delay; int dev; struct adxl34x_platform_data pdata; } ;
typedef int irqreturn_t ;


 int ACTIVITY ;
 int ACT_TAP_STATUS ;
 int AC_READ (struct adxl34x*,int ) ;
 int ADXL346_2D_ORIENT (int) ;
 int ADXL346_2D_VALID ;
 int ADXL346_3D_ORIENT (int) ;
 int ADXL346_3D_VALID ;
 int ADXL_EN_ORIENTATION_2D ;
 int ADXL_EN_ORIENTATION_3D ;
 int DATA_READY ;
 int DOUBLE_TAP ;
 int ENTRIES (int) ;
 int FIFO_STATUS ;
 int FREE_FALL ;
 int INACTIVITY ;
 int INT_SOURCE ;
 int IRQ_HANDLED ;
 int ORIENT ;
 int OVERRUN ;
 int SINGLE_TAP ;
 int TAP_X_EN ;
 int TAP_Y_EN ;
 int TAP_Z_EN ;
 int WATERMARK ;
 int adxl34x_do_tap (struct adxl34x*,struct adxl34x_platform_data*,int) ;
 int adxl34x_report_key_single (int ,int ) ;
 int adxl34x_service_ev_fifo (struct adxl34x*) ;
 int dev_dbg (int ,char*) ;
 int input_report_key (int ,scalar_t__,int) ;
 int input_sync (int ) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t adxl34x_irq(int irq, void *handle)
{
 struct adxl34x *ac = handle;
 struct adxl34x_platform_data *pdata = &ac->pdata;
 int int_stat, tap_stat, samples, orient, orient_code;






 if (pdata->tap_axis_control & (TAP_X_EN | TAP_Y_EN | TAP_Z_EN))
  tap_stat = AC_READ(ac, ACT_TAP_STATUS);
 else
  tap_stat = 0;

 int_stat = AC_READ(ac, INT_SOURCE);

 if (int_stat & FREE_FALL)
  adxl34x_report_key_single(ac->input, pdata->ev_code_ff);

 if (int_stat & OVERRUN)
  dev_dbg(ac->dev, "OVERRUN\n");

 if (int_stat & (SINGLE_TAP | DOUBLE_TAP)) {
  adxl34x_do_tap(ac, pdata, tap_stat);

  if (int_stat & DOUBLE_TAP)
   adxl34x_do_tap(ac, pdata, tap_stat);
 }

 if (pdata->ev_code_act_inactivity) {
  if (int_stat & ACTIVITY)
   input_report_key(ac->input,
      pdata->ev_code_act_inactivity, 1);
  if (int_stat & INACTIVITY)
   input_report_key(ac->input,
      pdata->ev_code_act_inactivity, 0);
 }




 if (pdata->orientation_enable) {
  orient = AC_READ(ac, ORIENT);
  if ((pdata->orientation_enable & ADXL_EN_ORIENTATION_2D) &&
      (orient & ADXL346_2D_VALID)) {

   orient_code = ADXL346_2D_ORIENT(orient);

   if (ac->orient2d_saved != orient_code) {
    ac->orient2d_saved = orient_code;
    adxl34x_report_key_single(ac->input,
     pdata->ev_codes_orient_2d[orient_code]);
   }
  }

  if ((pdata->orientation_enable & ADXL_EN_ORIENTATION_3D) &&
      (orient & ADXL346_3D_VALID)) {

   orient_code = ADXL346_3D_ORIENT(orient) - 1;

   if (ac->orient3d_saved != orient_code) {
    ac->orient3d_saved = orient_code;
    adxl34x_report_key_single(ac->input,
     pdata->ev_codes_orient_3d[orient_code]);
   }
  }
 }

 if (int_stat & (DATA_READY | WATERMARK)) {

  if (pdata->fifo_mode)
   samples = ENTRIES(AC_READ(ac, FIFO_STATUS)) + 1;
  else
   samples = 1;

  for (; samples > 0; samples--) {
   adxl34x_service_ev_fifo(ac);
   if (ac->fifo_delay && (samples > 1))
    udelay(3);
  }
 }

 input_sync(ac->input);

 return IRQ_HANDLED;
}
