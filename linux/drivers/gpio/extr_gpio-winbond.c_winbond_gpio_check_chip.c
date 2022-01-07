
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 unsigned int WB_SIO_CHIP_ID_W83627UHG ;
 unsigned int WB_SIO_CHIP_ID_W83627UHG_MASK ;
 int WB_SIO_REG_CHIP_LSB ;
 int WB_SIO_REG_CHIP_MSB ;
 int pr_err (char*) ;
 int pr_notice (char*,unsigned long,unsigned int) ;
 int winbond_sio_enter (unsigned long) ;
 int winbond_sio_leave (unsigned long) ;
 unsigned int winbond_sio_reg_read (unsigned long,int ) ;

__attribute__((used)) static int winbond_gpio_check_chip(unsigned long base)
{
 int ret;
 unsigned int chip;

 ret = winbond_sio_enter(base);
 if (ret)
  return ret;

 chip = winbond_sio_reg_read(base, WB_SIO_REG_CHIP_MSB) << 8;
 chip |= winbond_sio_reg_read(base, WB_SIO_REG_CHIP_LSB);

 pr_notice("chip ID at %lx is %.4x\n", base, chip);

 if ((chip & WB_SIO_CHIP_ID_W83627UHG_MASK) !=
     WB_SIO_CHIP_ID_W83627UHG) {
  pr_err("not an our chip\n");
  ret = -ENODEV;
 }

 winbond_sio_leave(base);

 return ret;
}
