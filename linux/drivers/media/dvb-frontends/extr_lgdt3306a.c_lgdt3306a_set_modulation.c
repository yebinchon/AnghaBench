
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int current_modulation; } ;
struct dtv_frontend_properties {int modulation; } ;


 int EINVAL ;




 int dbg_info (char*) ;
 scalar_t__ lg_chkerr (int) ;
 int lgdt3306a_set_qam (struct lgdt3306a_state*,int) ;
 int lgdt3306a_set_vsb (struct lgdt3306a_state*) ;

__attribute__((used)) static int lgdt3306a_set_modulation(struct lgdt3306a_state *state,
       struct dtv_frontend_properties *p)
{
 int ret;

 dbg_info("\n");

 switch (p->modulation) {
 case 128:
  ret = lgdt3306a_set_vsb(state);
  break;
 case 130:
 case 131:
 case 129:
  ret = lgdt3306a_set_qam(state, p->modulation);
  break;
 default:
  return -EINVAL;
 }
 if (lg_chkerr(ret))
  goto fail;

 state->current_modulation = p->modulation;

fail:
 return ret;
}
