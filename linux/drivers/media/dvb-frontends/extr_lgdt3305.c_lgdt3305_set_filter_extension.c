
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3305_state {int dummy; } ;
struct dtv_frontend_properties {int modulation; } ;


 int EINVAL ;



 int lg_dbg (char*,int) ;
 int lgdt3305_set_reg_bit (struct lgdt3305_state*,int,int,int) ;

__attribute__((used)) static int lgdt3305_set_filter_extension(struct lgdt3305_state *state,
      struct dtv_frontend_properties *p)
{
 int val;

 switch (p->modulation) {
 case 128:
  val = 0;
  break;
 case 129:
 case 130:
  val = 1;
  break;
 default:
  return -EINVAL;
 }
 lg_dbg("val = %d\n", val);

 return lgdt3305_set_reg_bit(state, 0x043f, 2, val);
}
