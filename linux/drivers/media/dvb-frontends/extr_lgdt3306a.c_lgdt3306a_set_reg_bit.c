
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lgdt3306a_state {int dummy; } ;


 int dbg_reg (char*,int ,int,int) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int ,int*) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int ,int) ;

__attribute__((used)) static int lgdt3306a_set_reg_bit(struct lgdt3306a_state *state,
    u16 reg, int bit, int onoff)
{
 u8 val;
 int ret;

 dbg_reg("reg: 0x%04x, bit: %d, level: %d\n", reg, bit, onoff);

 ret = lgdt3306a_read_reg(state, reg, &val);
 if (lg_chkerr(ret))
  goto fail;

 val &= ~(1 << bit);
 val |= (onoff & 1) << bit;

 ret = lgdt3306a_write_reg(state, reg, val);
 lg_chkerr(ret);
fail:
 return ret;
}
