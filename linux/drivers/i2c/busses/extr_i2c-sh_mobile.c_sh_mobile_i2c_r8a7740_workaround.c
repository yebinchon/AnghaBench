
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int dummy; } ;


 int ICCR ;
 int ICCR_ICE ;
 int ICCR_SCP ;
 int ICCR_TRS ;
 int ICSTART ;
 int ICSTART_ICSTART ;
 int iic_rd (struct sh_mobile_i2c_data*,int ) ;
 int iic_set_clr (struct sh_mobile_i2c_data*,int ,int ,int ) ;
 int iic_wr (struct sh_mobile_i2c_data*,int ,int ) ;
 int sh_mobile_i2c_init (struct sh_mobile_i2c_data*) ;
 int udelay (int) ;

__attribute__((used)) static int sh_mobile_i2c_r8a7740_workaround(struct sh_mobile_i2c_data *pd)
{
 iic_set_clr(pd, ICCR, ICCR_ICE, 0);
 iic_rd(pd, ICCR);

 iic_set_clr(pd, ICSTART, ICSTART_ICSTART, 0);
 iic_rd(pd, ICSTART);

 udelay(10);

 iic_wr(pd, ICCR, ICCR_SCP);
 iic_wr(pd, ICSTART, 0);

 udelay(10);

 iic_wr(pd, ICCR, ICCR_TRS);
 udelay(10);
 iic_wr(pd, ICCR, 0);
 udelay(10);
 iic_wr(pd, ICCR, ICCR_TRS);
 udelay(10);

 return sh_mobile_i2c_init(pd);
}
