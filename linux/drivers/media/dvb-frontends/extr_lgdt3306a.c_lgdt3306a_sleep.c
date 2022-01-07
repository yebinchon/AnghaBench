
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int current_frequency; } ;


 int dbg_info (char*) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_mpeg_tristate (struct lgdt3306a_state*,int) ;
 int lgdt3306a_power (struct lgdt3306a_state*,int ) ;

__attribute__((used)) static int lgdt3306a_sleep(struct lgdt3306a_state *state)
{
 int ret;

 dbg_info("\n");
 state->current_frequency = -1;

 ret = lgdt3306a_mpeg_tristate(state, 1);
 if (lg_chkerr(ret))
  goto fail;

 ret = lgdt3306a_power(state, 0);
 lg_chkerr(ret);

fail:
 return 0;
}
