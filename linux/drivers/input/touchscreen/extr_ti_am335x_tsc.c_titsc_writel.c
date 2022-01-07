
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct titsc {TYPE_1__* mfd_tscadc; } ;
struct TYPE_2__ {scalar_t__ tscadc_base; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void titsc_writel(struct titsc *tsc, unsigned int reg,
     unsigned int val)
{
 writel(val, tsc->mfd_tscadc->tscadc_base + reg);
}
