
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {scalar_t__ reg; } ;


 unsigned char ioread8 (scalar_t__) ;

__attribute__((used)) static unsigned char iic_rd(struct sh_mobile_i2c_data *pd, int offs)
{
 return ioread8(pd->reg + offs);
}
