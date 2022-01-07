
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct lg216x_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {int lg_chip; } ;




 int lg216x_read_reg (struct lg216x_state*,int,int*) ;
 int lg216x_write_reg (struct lg216x_state*,int,int) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_set_ensemble(struct lg216x_state *state, int id)
{
 int ret;
 u16 reg;
 u8 val;

 switch (state->cfg->lg_chip) {
 case 129:
  reg = 0x0400;
  break;
 case 128:
 default:
  reg = 0x0500;
  break;
 }

 ret = lg216x_read_reg(state, reg, &val);
 if (lg_fail(ret))
  goto fail;

 val &= 0xfe;
 val |= (id) ? 0x01 : 0x00;

 ret = lg216x_write_reg(state, reg, val);
 lg_fail(ret);
fail:
 return ret;
}
