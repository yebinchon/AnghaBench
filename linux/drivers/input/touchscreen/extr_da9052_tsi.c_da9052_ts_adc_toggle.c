
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_tsi {int adc_on; int da9052; } ;


 int DA9052_TSI_CONT_A_REG ;
 int da9052_reg_update (int ,int ,int,int) ;

__attribute__((used)) static void da9052_ts_adc_toggle(struct da9052_tsi *tsi, bool on)
{
 da9052_reg_update(tsi->da9052, DA9052_TSI_CONT_A_REG, 1 << 0, on);
 tsi->adc_on = on;
}
