
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i2cgpio; } ;


 int WB_SIO_REG_I2CPS_I2CFS ;
 int WB_SIO_REG_I2C_PS ;
 TYPE_1__ params ;
 int pr_warn (char*) ;
 int winbond_sio_reg_btest (unsigned long,int ,int ) ;

__attribute__((used)) static void winbond_gpio_configure_port1_check_i2c(unsigned long base)
{
 params.i2cgpio = !winbond_sio_reg_btest(base, WB_SIO_REG_I2C_PS,
      WB_SIO_REG_I2CPS_I2CFS);
 if (!params.i2cgpio)
  pr_warn("disabling GPIO2.5 and GPIO2.6 as I2C is enabled\n");
}
