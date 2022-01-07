
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lg216x_state {int dummy; } ;
struct lg216x_reg {int val; int reg; } ;


 int lg216x_write_reg (struct lg216x_state*,int ,int ) ;
 scalar_t__ lg_fail (int) ;
 int lg_reg (char*,int) ;

__attribute__((used)) static int lg216x_write_regs(struct lg216x_state *state,
        struct lg216x_reg *regs, int len)
{
 int i, ret;

 lg_reg("writing %d registers...\n", len);

 for (i = 0; i < len; i++) {
  ret = lg216x_write_reg(state, regs[i].reg, regs[i].val);
  if (lg_fail(ret))
   return ret;
 }
 return 0;
}
