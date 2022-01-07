
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_lradc_data {int vref; scalar_t__ base; TYPE_1__* variant; int vref_supply; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int divisor_numerator; int divisor_denominator; } ;


 int CHAN0_KEYDOWN_IRQ ;
 int CHAN0_KEYUP_IRQ ;
 int ENABLE (int) ;
 int FIRST_CONVERT_DLY (int) ;
 int HOLD_EN (int) ;
 int LEVELA_B_CNT (int) ;
 scalar_t__ LRADC_CTRL ;
 scalar_t__ LRADC_INTC ;
 int SAMPLE_RATE (int ) ;
 struct sun4i_lradc_data* input_get_drvdata (struct input_dev*) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sun4i_lradc_open(struct input_dev *dev)
{
 struct sun4i_lradc_data *lradc = input_get_drvdata(dev);
 int error;

 error = regulator_enable(lradc->vref_supply);
 if (error)
  return error;

 lradc->vref = regulator_get_voltage(lradc->vref_supply) *
        lradc->variant->divisor_numerator /
        lradc->variant->divisor_denominator;




 writel(FIRST_CONVERT_DLY(2) | LEVELA_B_CNT(1) | HOLD_EN(1) |
  SAMPLE_RATE(0) | ENABLE(1), lradc->base + LRADC_CTRL);

 writel(CHAN0_KEYUP_IRQ | CHAN0_KEYDOWN_IRQ, lradc->base + LRADC_INTC);

 return 0;
}
