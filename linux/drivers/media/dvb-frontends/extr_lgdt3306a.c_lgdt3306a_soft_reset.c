
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;


 int dbg_info (char*) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_set_reg_bit (struct lgdt3306a_state*,int,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int lgdt3306a_soft_reset(struct lgdt3306a_state *state)
{
 int ret;

 dbg_info("\n");

 ret = lgdt3306a_set_reg_bit(state, 0x0000, 7, 0);
 if (lg_chkerr(ret))
  goto fail;

 msleep(20);
 ret = lgdt3306a_set_reg_bit(state, 0x0000, 7, 1);
 lg_chkerr(ret);

fail:
 return ret;
}
