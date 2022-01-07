
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lmu_bank {int dummy; } ;


 int ti_lmu_common_update_brightness (struct ti_lmu_bank*,int) ;

int ti_lmu_common_set_brightness(struct ti_lmu_bank *lmu_bank, int brightness)
{
 return ti_lmu_common_update_brightness(lmu_bank, brightness);
}
