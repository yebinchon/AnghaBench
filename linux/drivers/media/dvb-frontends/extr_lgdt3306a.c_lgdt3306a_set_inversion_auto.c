
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;


 int dbg_info (char*,int) ;
 int lgdt3306a_set_reg_bit (struct lgdt3306a_state*,int,int,int) ;

__attribute__((used)) static int lgdt3306a_set_inversion_auto(struct lgdt3306a_state *state,
           int enabled)
{
 int ret;

 dbg_info("(%d)\n", enabled);


 ret = lgdt3306a_set_reg_bit(state, 0x0002, 3, enabled);
 return ret;
}
