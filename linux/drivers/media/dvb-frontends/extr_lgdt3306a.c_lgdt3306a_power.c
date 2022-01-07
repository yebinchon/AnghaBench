
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;


 int dbg_info (char*,int) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_DumpAllRegs (struct lgdt3306a_state*) ;
 int lgdt3306a_set_reg_bit (struct lgdt3306a_state*,int,int,int) ;

__attribute__((used)) static int lgdt3306a_power(struct lgdt3306a_state *state,
         int mode)
{
 int ret;

 dbg_info("(%d)\n", mode);

 if (mode == 0) {

  ret = lgdt3306a_set_reg_bit(state, 0x0000, 7, 0);
  if (lg_chkerr(ret))
   goto fail;


  ret = lgdt3306a_set_reg_bit(state, 0x0000, 0, 0);
  if (lg_chkerr(ret))
   goto fail;

 } else {

  ret = lgdt3306a_set_reg_bit(state, 0x0000, 7, 1);
  if (lg_chkerr(ret))
   goto fail;


  ret = lgdt3306a_set_reg_bit(state, 0x0000, 0, 1);
  if (lg_chkerr(ret))
   goto fail;
 }




fail:
 return ret;
}
