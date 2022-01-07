
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgs8gxx_state {int dummy; } ;


 int lgs8gxx_read_reg (struct lgs8gxx_state*,int,int*) ;
 int msleep (int) ;

__attribute__((used)) static int wait_reg_mask(struct lgs8gxx_state *priv, u8 reg, u8 mask,
 u8 val, u8 delay, u8 tries)
{
 u8 t;
 int i;

 for (i = 0; i < tries; i++) {
  lgs8gxx_read_reg(priv, reg, &t);

  if ((t & mask) == val)
   return 0;
  msleep(delay);
 }

 return 1;
}
