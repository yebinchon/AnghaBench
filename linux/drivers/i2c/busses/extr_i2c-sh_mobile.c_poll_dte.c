
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct sh_mobile_i2c_data {int dummy; } ;


 int ENXIO ;
 int ETIMEDOUT ;
 int ICSR ;
 int ICSR_DTE ;
 int ICSR_TACK ;
 int iic_rd (struct sh_mobile_i2c_data*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int poll_dte(struct sh_mobile_i2c_data *pd)
{
 int i;

 for (i = 1000; i; i--) {
  u_int8_t val = iic_rd(pd, ICSR);

  if (val & ICSR_DTE)
   break;

  if (val & ICSR_TACK)
   return -ENXIO;

  udelay(10);
 }

 return i ? 0 : -ETIMEDOUT;
}
