
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTC_IDLE ;
 int INTC_IDLE_TURBO ;
 int INTC_SYSCONFIG ;
 int intc_writel (int ,int ) ;

void omap3_intc_prepare_idle(void)
{




 intc_writel(INTC_SYSCONFIG, 0);
 intc_writel(INTC_IDLE, INTC_IDLE_TURBO);
}
