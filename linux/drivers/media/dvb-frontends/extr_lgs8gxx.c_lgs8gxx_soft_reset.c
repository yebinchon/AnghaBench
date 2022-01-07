
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgs8gxx_state {int dummy; } ;


 int lgs8gxx_write_reg (struct lgs8gxx_state*,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int lgs8gxx_soft_reset(struct lgs8gxx_state *priv)
{
 lgs8gxx_write_reg(priv, 0x02, 0x00);
 msleep(1);
 lgs8gxx_write_reg(priv, 0x02, 0x01);
 msleep(100);

 return 0;
}
