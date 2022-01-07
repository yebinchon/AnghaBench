
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg216x_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {int lg_chip; } ;




 int lg216x_initialize (struct lg216x_state*) ;
 int lg216x_write_reg (struct lg216x_state*,int,int) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg216x_enable_fic(struct lg216x_state *state, int onoff)
{
 int ret;

 ret = lg216x_write_reg(state, 0x0017, 0x23);
 if (lg_fail(ret))
  goto fail;

 ret = lg216x_write_reg(state, 0x0016, 0xfc);
 if (lg_fail(ret))
  goto fail;

 switch (state->cfg->lg_chip) {
 case 129:
  ret = lg216x_write_reg(state, 0x0016,
           0xfc | ((onoff) ? 0x02 : 0x00));
  break;
 case 128:
  ret = lg216x_write_reg(state, 0x0016, (onoff) ? 0x10 : 0x00);
  break;
 }
 if (lg_fail(ret))
  goto fail;

 ret = lg216x_initialize(state);
 if (lg_fail(ret))
  goto fail;

 if (onoff) {
  ret = lg216x_write_reg(state, 0x0017, 0x03);
  lg_fail(ret);
 }
fail:
 return ret;
}
