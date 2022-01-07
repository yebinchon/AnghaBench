
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3305_state {int dummy; } ;
struct dtv_frontend_properties {int modulation; } ;


 int EINVAL ;
 int LGDT3305_CR_CTRL_7 ;
 int LGDT3305_FEC_BLOCK_CTRL ;



 int lg_dbg (char*,int) ;
 int lgdt3305_write_reg (struct lgdt3305_state*,int ,int) ;

__attribute__((used)) static int lgdt3305_spectral_inversion(struct lgdt3305_state *state,
           struct dtv_frontend_properties *p,
           int inversion)
{
 int ret;

 lg_dbg("(%d)\n", inversion);

 switch (p->modulation) {
 case 128:
  ret = lgdt3305_write_reg(state, LGDT3305_CR_CTRL_7,
      inversion ? 0xf9 : 0x79);
  break;
 case 129:
 case 130:
  ret = lgdt3305_write_reg(state, LGDT3305_FEC_BLOCK_CTRL,
      inversion ? 0xfd : 0xff);
  break;
 default:
  ret = -EINVAL;
 }
 return ret;
}
