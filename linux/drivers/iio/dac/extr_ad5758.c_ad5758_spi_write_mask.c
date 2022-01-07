
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {int dummy; } ;


 int ad5758_spi_reg_read (struct ad5758_state*,unsigned int) ;
 int ad5758_spi_reg_write (struct ad5758_state*,unsigned int,int) ;

__attribute__((used)) static int ad5758_spi_write_mask(struct ad5758_state *st,
     unsigned int addr,
     unsigned long int mask,
     unsigned int val)
{
 int regval;

 regval = ad5758_spi_reg_read(st, addr);
 if (regval < 0)
  return regval;

 regval &= ~mask;
 regval |= val;

 return ad5758_spi_reg_write(st, addr, regval);
}
