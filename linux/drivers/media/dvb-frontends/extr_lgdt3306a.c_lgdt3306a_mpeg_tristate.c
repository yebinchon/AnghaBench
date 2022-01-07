
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt3306a_state {int dummy; } ;


 int dbg_info (char*,int) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_read_reg (struct lgdt3306a_state*,int,int*) ;
 int lgdt3306a_set_reg_bit (struct lgdt3306a_state*,int,int,int) ;
 int lgdt3306a_write_reg (struct lgdt3306a_state*,int,int) ;

__attribute__((used)) static int lgdt3306a_mpeg_tristate(struct lgdt3306a_state *state,
         int mode)
{
 u8 val;
 int ret;

 dbg_info("(%d)\n", mode);

 if (mode) {
  ret = lgdt3306a_read_reg(state, 0x0070, &val);
  if (lg_chkerr(ret))
   goto fail;




  val &= ~0xa8;
  ret = lgdt3306a_write_reg(state, 0x0070, val);
  if (lg_chkerr(ret))
   goto fail;


  ret = lgdt3306a_set_reg_bit(state, 0x0003, 6, 1);
  if (lg_chkerr(ret))
   goto fail;

 } else {

  ret = lgdt3306a_set_reg_bit(state, 0x0003, 6, 0);
  if (lg_chkerr(ret))
   goto fail;

  ret = lgdt3306a_read_reg(state, 0x0070, &val);
  if (lg_chkerr(ret))
   goto fail;

  val |= 0xa8;
  ret = lgdt3306a_write_reg(state, 0x0070, val);
  if (lg_chkerr(ret))
   goto fail;
 }

fail:
 return ret;
}
