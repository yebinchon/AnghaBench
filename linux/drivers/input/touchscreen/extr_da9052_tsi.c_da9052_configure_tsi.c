
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_tsi {int da9052; } ;


 int DA9052_ADC_CONT_REG ;
 int DA9052_LDO9_REG ;
 int DA9052_TSI_CONT_A_REG ;
 int da9052_reg_update (int ,int ,int,int) ;
 int da9052_reg_write (int ,int ,int) ;
 int da9052_ts_configure_gpio (int ) ;

__attribute__((used)) static int da9052_configure_tsi(struct da9052_tsi *tsi)
{
 int error;

 error = da9052_ts_configure_gpio(tsi->da9052);
 if (error)
  return error;


 error = da9052_reg_update(tsi->da9052, DA9052_ADC_CONT_REG,
      1 << 6, 1 << 6);
 if (error < 0)
  return error;


 error = da9052_reg_update(tsi->da9052, DA9052_TSI_CONT_A_REG, 0xFC, 0xC0);
 if (error < 0)
  return error;


 error = da9052_reg_write(tsi->da9052, DA9052_LDO9_REG, 0x59);
 if (error < 0)
  return error;

 return 0;
}
