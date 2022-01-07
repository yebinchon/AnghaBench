
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lg216x_state {int dummy; } ;


 int lg216x_read_reg (struct lg216x_state*,int ,int*) ;
 int lg216x_write_reg (struct lg216x_state*,int ,int) ;
 scalar_t__ lg_fail (int) ;
 int lg_reg (char*,int ,int,int) ;

__attribute__((used)) static int lg216x_set_reg_bit(struct lg216x_state *state,
         u16 reg, int bit, int onoff)
{
 u8 val;
 int ret;

 lg_reg("reg: 0x%04x, bit: %d, level: %d\n", reg, bit, onoff);

 ret = lg216x_read_reg(state, reg, &val);
 if (lg_fail(ret))
  goto fail;

 val &= ~(1 << bit);
 val |= (onoff & 1) << bit;

 ret = lg216x_write_reg(state, reg, val);
 lg_fail(ret);
fail:
 return ret;
}
