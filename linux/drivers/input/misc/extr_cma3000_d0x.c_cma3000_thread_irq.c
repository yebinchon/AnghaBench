
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cma3000_accl_data {scalar_t__ bit_to_mg; int input_dev; } ;
typedef int irqreturn_t ;


 int ABS_MISC ;
 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int CMA3000_CTRL ;
 int CMA3000_DOUTX ;
 int CMA3000_DOUTY ;
 int CMA3000_DOUTZ ;
 int CMA3000_GRANGEMASK ;
 int CMA3000_INTSTATUS ;
 int CMA3000_INTSTATUS_FFDET ;
 int CMA3000_MODEMASK ;
 int CMA3000_READ (struct cma3000_accl_data*,int ,char*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int decode_mg (struct cma3000_accl_data*,int*,int*,int*) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 scalar_t__** mode_to_mg ;

__attribute__((used)) static irqreturn_t cma3000_thread_irq(int irq, void *dev_id)
{
 struct cma3000_accl_data *data = dev_id;
 int datax, datay, dataz, intr_status;
 u8 ctrl, mode, range;

 intr_status = CMA3000_READ(data, CMA3000_INTSTATUS, "interrupt status");
 if (intr_status < 0)
  return IRQ_NONE;


 if (intr_status & CMA3000_INTSTATUS_FFDET) {
  input_report_abs(data->input_dev, ABS_MISC, 1);
  input_sync(data->input_dev);
 } else {
  input_report_abs(data->input_dev, ABS_MISC, 0);
 }

 datax = CMA3000_READ(data, CMA3000_DOUTX, "X");
 datay = CMA3000_READ(data, CMA3000_DOUTY, "Y");
 dataz = CMA3000_READ(data, CMA3000_DOUTZ, "Z");

 ctrl = CMA3000_READ(data, CMA3000_CTRL, "ctrl");
 mode = (ctrl & CMA3000_MODEMASK) >> 1;
 range = (ctrl & CMA3000_GRANGEMASK) >> 7;

 data->bit_to_mg = mode_to_mg[mode][range];


 if (data->bit_to_mg == 0)
  return IRQ_NONE;


 decode_mg(data, &datax, &datay, &dataz);

 input_report_abs(data->input_dev, ABS_X, datax);
 input_report_abs(data->input_dev, ABS_Y, datay);
 input_report_abs(data->input_dev, ABS_Z, dataz);
 input_sync(data->input_dev);

 return IRQ_HANDLED;
}
