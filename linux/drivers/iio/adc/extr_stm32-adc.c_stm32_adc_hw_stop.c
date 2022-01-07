
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_adc {scalar_t__ clk; TYPE_1__* cfg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* unprepare ) (struct stm32_adc*) ;} ;


 int clk_disable_unprepare (scalar_t__) ;
 struct stm32_adc* dev_get_drvdata (struct device*) ;
 int stub1 (struct stm32_adc*) ;

__attribute__((used)) static int stm32_adc_hw_stop(struct device *dev)
{
 struct stm32_adc *adc = dev_get_drvdata(dev);

 if (adc->cfg->unprepare)
  adc->cfg->unprepare(adc);

 if (adc->clk)
  clk_disable_unprepare(adc->clk);

 return 0;
}
