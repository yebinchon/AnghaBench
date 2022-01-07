
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {unsigned char icic; scalar_t__ reg; } ;


 int ICIC ;
 int iowrite8 (unsigned char,scalar_t__) ;

__attribute__((used)) static void iic_wr(struct sh_mobile_i2c_data *pd, int offs, unsigned char data)
{
 if (offs == ICIC)
  data |= pd->icic;

 iowrite8(data, pd->reg + offs);
}
