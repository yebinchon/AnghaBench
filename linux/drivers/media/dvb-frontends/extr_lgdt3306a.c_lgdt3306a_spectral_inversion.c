
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3306a_state {int dummy; } ;
struct dtv_frontend_properties {int modulation; } ;


 int EINVAL ;




 int dbg_info (char*,int) ;
 int lgdt3306a_set_inversion (struct lgdt3306a_state*,int) ;
 int lgdt3306a_set_inversion_auto (struct lgdt3306a_state*,int) ;

__attribute__((used)) static int lgdt3306a_spectral_inversion(struct lgdt3306a_state *state,
           struct dtv_frontend_properties *p,
           int inversion)
{
 int ret = 0;

 dbg_info("(%d)\n", inversion);
 return ret;
}
