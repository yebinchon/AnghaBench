
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spear_adc_state {TYPE_1__* adc_base_spear6xx; } ;
struct TYPE_2__ {int status; } ;


 int __raw_writel (int ,int *) ;

__attribute__((used)) static void spear_adc_set_status(struct spear_adc_state *st, u32 val)
{
 __raw_writel(val, &st->adc_base_spear6xx->status);
}
