
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lg216x_state {int dummy; } ;


 int lg216x_read_reg (struct lg216x_state*,int,int*) ;
 int lg216x_write_reg (struct lg216x_state*,int,int) ;
 scalar_t__ lg_fail (int) ;

__attribute__((used)) static int lg2160_tuner_pwr_save(struct lg216x_state *state, int onoff)
{
 u8 val;
 int ret;

 ret = lg216x_read_reg(state, 0x0007, &val);
 if (lg_fail(ret))
  goto fail;

 val &= 0xbf;
 val |= (onoff) ? 0x40 : 0x00;

 ret = lg216x_write_reg(state, 0x0007, val);
 lg_fail(ret);
fail:
 return ret;
}
