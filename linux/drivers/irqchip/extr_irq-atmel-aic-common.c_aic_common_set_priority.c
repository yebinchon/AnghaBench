
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AT91_AIC_PRIOR ;

void aic_common_set_priority(int priority, unsigned *val)
{
 *val &= ~AT91_AIC_PRIOR;
 *val |= priority;
}
