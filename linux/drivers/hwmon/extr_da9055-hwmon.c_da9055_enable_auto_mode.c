
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055 {int dummy; } ;


 int DA9055_REG_ADC_CONT ;
 int da9055_reg_update (struct da9055*,int ,int,int) ;

__attribute__((used)) static int da9055_enable_auto_mode(struct da9055 *da9055, int channel)
{

 return da9055_reg_update(da9055, DA9055_REG_ADC_CONT, 1 << channel,
    1 << channel);

}
