
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_lradc_data {int vref_supply; scalar_t__ base; } ;
struct input_dev {int dummy; } ;


 int FIRST_CONVERT_DLY (int) ;
 int HOLD_EN (int) ;
 int LEVELA_B_CNT (int) ;
 scalar_t__ LRADC_CTRL ;
 scalar_t__ LRADC_INTC ;
 int SAMPLE_RATE (int) ;
 struct sun4i_lradc_data* input_get_drvdata (struct input_dev*) ;
 int regulator_disable (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sun4i_lradc_close(struct input_dev *dev)
{
 struct sun4i_lradc_data *lradc = input_get_drvdata(dev);


 writel(FIRST_CONVERT_DLY(2) | LEVELA_B_CNT(1) | HOLD_EN(1) |
  SAMPLE_RATE(2), lradc->base + LRADC_CTRL);
 writel(0, lradc->base + LRADC_INTC);

 regulator_disable(lradc->vref_supply);
}
