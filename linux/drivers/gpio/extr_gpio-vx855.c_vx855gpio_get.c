
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct vx855_gpio {int io_gpi; int io_gpo; } ;
struct gpio_chip {int dummy; } ;


 unsigned int NR_VX855_GPI ;
 unsigned int NR_VX855_GPInO ;
 int gpi_i_bit (unsigned int) ;
 int gpio_i_bit (unsigned int) ;
 struct vx855_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int gpo_o_bit (unsigned int) ;
 int inl (int ) ;

__attribute__((used)) static int vx855gpio_get(struct gpio_chip *gpio, unsigned int nr)
{
 struct vx855_gpio *vg = gpiochip_get_data(gpio);
 u_int32_t reg_in;
 int ret = 0;

 if (nr < NR_VX855_GPI) {
  reg_in = inl(vg->io_gpi);
  if (reg_in & gpi_i_bit(nr))
   ret = 1;
 } else if (nr < NR_VX855_GPInO) {


  reg_in = inl(vg->io_gpo);
  if (reg_in & gpo_o_bit(nr - NR_VX855_GPI))
   ret = 1;
 } else {
  reg_in = inl(vg->io_gpi);
  if (reg_in & gpio_i_bit(nr - NR_VX855_GPInO))
   ret = 1;
 }

 return ret;
}
