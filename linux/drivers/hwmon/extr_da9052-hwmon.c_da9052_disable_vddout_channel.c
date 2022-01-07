
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052 {int dummy; } ;


 int DA9052_ADCCONT_AUTOVDDEN ;
 int DA9052_ADC_CONT_REG ;
 int da9052_reg_update (struct da9052*,int ,int ,int ) ;

__attribute__((used)) static inline int da9052_disable_vddout_channel(struct da9052 *da9052)
{
 return da9052_reg_update(da9052, DA9052_ADC_CONT_REG,
     DA9052_ADCCONT_AUTOVDDEN, 0);
}
