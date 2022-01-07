
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int dummy; } ;


 unsigned char iic_rd (struct sh_mobile_i2c_data*,int) ;
 int iic_wr (struct sh_mobile_i2c_data*,int,unsigned char) ;

__attribute__((used)) static void iic_set_clr(struct sh_mobile_i2c_data *pd, int offs,
   unsigned char set, unsigned char clr)
{
 iic_wr(pd, offs, (iic_rd(pd, offs) | set) & ~clr);
}
