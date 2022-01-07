
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tiadc_device {TYPE_1__* mfd_tscadc; } ;
struct TYPE_2__ {scalar_t__ tscadc_base; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void tiadc_writel(struct tiadc_device *adc, unsigned int reg,
     unsigned int val)
{
 writel(val, adc->mfd_tscadc->tscadc_base + reg);
}
