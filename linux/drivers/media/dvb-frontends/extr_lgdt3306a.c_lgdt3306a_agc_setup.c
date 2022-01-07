
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;
struct dtv_frontend_properties {int modulation; } ;


 int EINVAL ;




 int dbg_info (char*) ;

__attribute__((used)) static int lgdt3306a_agc_setup(struct lgdt3306a_state *state,
         struct dtv_frontend_properties *p)
{

 dbg_info("\n");

 switch (p->modulation) {
 case 128:
  break;
 case 130:
 case 131:
 case 129:
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
