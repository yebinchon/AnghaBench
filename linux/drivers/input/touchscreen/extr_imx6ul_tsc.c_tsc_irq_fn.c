
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx6ul_tsc {int input; int xnur_gpio; scalar_t__ tsc_regs; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int DETECT_SIGNAL ;
 int IRQ_HANDLED ;
 int MEASURE_SIGNAL ;
 scalar_t__ REG_TSC_FLOW_CONTROL ;
 scalar_t__ REG_TSC_INT_STATUS ;
 scalar_t__ REG_TSC_MEASURE_VALUE ;
 int START_SENSE ;
 scalar_t__ gpiod_get_value_cansleep (int ) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int readl (scalar_t__) ;
 int tsc_wait_detect_mode (struct imx6ul_tsc*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t tsc_irq_fn(int irq, void *dev_id)
{
 struct imx6ul_tsc *tsc = dev_id;
 u32 status;
 u32 value;
 u32 x, y;
 u32 start;

 status = readl(tsc->tsc_regs + REG_TSC_INT_STATUS);


 writel(MEASURE_SIGNAL | DETECT_SIGNAL,
  tsc->tsc_regs + REG_TSC_INT_STATUS);


 start = readl(tsc->tsc_regs + REG_TSC_FLOW_CONTROL);
 start |= START_SENSE;
 writel(start, tsc->tsc_regs + REG_TSC_FLOW_CONTROL);

 if (status & MEASURE_SIGNAL) {
  value = readl(tsc->tsc_regs + REG_TSC_MEASURE_VALUE);
  x = (value >> 16) & 0x0fff;
  y = value & 0x0fff;





  if (!tsc_wait_detect_mode(tsc) ||
      gpiod_get_value_cansleep(tsc->xnur_gpio)) {
   input_report_key(tsc->input, BTN_TOUCH, 1);
   input_report_abs(tsc->input, ABS_X, x);
   input_report_abs(tsc->input, ABS_Y, y);
  } else {
   input_report_key(tsc->input, BTN_TOUCH, 0);
  }

  input_sync(tsc->input);
 }

 return IRQ_HANDLED;
}
