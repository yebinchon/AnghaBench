
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct titsc {int pen_down; unsigned int x_plate_resistance; int step_mask; int mfd_tscadc; int dev; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 unsigned int ADCFSM_STEPID ;
 int BTN_TOUCH ;
 unsigned int IRQENB_EOS ;
 unsigned int IRQENB_FIFO0THRES ;
 unsigned int IRQENB_HW_PEN ;
 unsigned int IRQENB_PENUP ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int MAX_12BIT ;
 int REG_ADCFSM ;
 int REG_IRQSTATUS ;
 int REG_RAWIRQSTATUS ;
 int am335x_tsc_se_set_cache (int ,int ) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int pm_relax (int ) ;
 int pm_stay_awake (int ) ;
 int titsc_read_coordinates (struct titsc*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 unsigned int titsc_readl (struct titsc*,int ) ;
 int titsc_writel (struct titsc*,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t titsc_irq(int irq, void *dev)
{
 struct titsc *ts_dev = dev;
 struct input_dev *input_dev = ts_dev->input;
 unsigned int fsm, status, irqclr = 0;
 unsigned int x = 0, y = 0;
 unsigned int z1, z2, z;

 status = titsc_readl(ts_dev, REG_RAWIRQSTATUS);
 if (status & IRQENB_HW_PEN) {
  ts_dev->pen_down = 1;
  irqclr |= IRQENB_HW_PEN;
  pm_stay_awake(ts_dev->dev);
 }

 if (status & IRQENB_PENUP) {
  fsm = titsc_readl(ts_dev, REG_ADCFSM);
  if (fsm == ADCFSM_STEPID) {
   ts_dev->pen_down = 0;
   input_report_key(input_dev, BTN_TOUCH, 0);
   input_report_abs(input_dev, ABS_PRESSURE, 0);
   input_sync(input_dev);
   pm_relax(ts_dev->dev);
  } else {
   ts_dev->pen_down = 1;
  }
  irqclr |= IRQENB_PENUP;
 }

 if (status & IRQENB_EOS)
  irqclr |= IRQENB_EOS;





 if (status & IRQENB_FIFO0THRES) {

  titsc_read_coordinates(ts_dev, &x, &y, &z1, &z2);

  if (ts_dev->pen_down && z1 != 0 && z2 != 0) {





   z = z1 - z2;
   z *= x;
   z *= ts_dev->x_plate_resistance;
   z /= z2;
   z = (z + 2047) >> 12;

   if (z <= MAX_12BIT) {
    input_report_abs(input_dev, ABS_X, x);
    input_report_abs(input_dev, ABS_Y, y);
    input_report_abs(input_dev, ABS_PRESSURE, z);
    input_report_key(input_dev, BTN_TOUCH, 1);
    input_sync(input_dev);
   }
  }
  irqclr |= IRQENB_FIFO0THRES;
 }
 if (irqclr) {
  titsc_writel(ts_dev, REG_IRQSTATUS, irqclr);
  if (status & IRQENB_EOS)
   am335x_tsc_se_set_cache(ts_dev->mfd_tscadc,
      ts_dev->step_mask);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
