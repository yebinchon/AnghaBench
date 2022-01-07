
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv {int receive_mode; scalar_t__ fectype; scalar_t__ mod_cod; scalar_t__ regoff; int pilots; scalar_t__ nr; } ;


 scalar_t__ DVBS2_64K ;
 scalar_t__ FE_16APSK_910 ;
 scalar_t__ FE_32APSK_910 ;
 scalar_t__ FE_8PSK_910 ;
 scalar_t__ FE_QPSK_910 ;


 scalar_t__ RSTV0910_P2_ACLC2S216A ;
 scalar_t__ RSTV0910_P2_ACLC2S232A ;
 scalar_t__ RSTV0910_P2_ACLC2S28 ;
 scalar_t__ RSTV0910_P2_ACLC2S2Q ;
 scalar_t__ RSTV0910_P2_DMDCFGMD ;
 int RSTV0910_TSTTSRS ;
 int get_optim_cloop (struct stv*,scalar_t__,int ) ;
 int read_reg (struct stv*,scalar_t__,int*) ;
 int write_reg (struct stv*,scalar_t__,int) ;
 int write_shared_reg (struct stv*,int ,int,int) ;

__attribute__((used)) static int tracking_optimization(struct stv *state)
{
 u8 tmp;

 read_reg(state, RSTV0910_P2_DMDCFGMD + state->regoff, &tmp);
 tmp &= ~0xC0;

 switch (state->receive_mode) {
 case 129:
  tmp |= 0x40;
  break;
 case 128:
  tmp |= 0x80;
  break;
 default:
  tmp |= 0xC0;
  break;
 }
 write_reg(state, RSTV0910_P2_DMDCFGMD + state->regoff, tmp);

 if (state->receive_mode == 128) {

  write_shared_reg(state,
     RSTV0910_TSTTSRS, state->nr ? 0x02 : 0x01,
     0x03);

  if (state->fectype == DVBS2_64K) {
   u8 aclc = get_optim_cloop(state, state->mod_cod,
        state->pilots);

   if (state->mod_cod <= FE_QPSK_910) {
    write_reg(state, RSTV0910_P2_ACLC2S2Q +
       state->regoff, aclc);
   } else if (state->mod_cod <= FE_8PSK_910) {
    write_reg(state, RSTV0910_P2_ACLC2S2Q +
       state->regoff, 0x2a);
    write_reg(state, RSTV0910_P2_ACLC2S28 +
       state->regoff, aclc);
   } else if (state->mod_cod <= FE_16APSK_910) {
    write_reg(state, RSTV0910_P2_ACLC2S2Q +
       state->regoff, 0x2a);
    write_reg(state, RSTV0910_P2_ACLC2S216A +
       state->regoff, aclc);
   } else if (state->mod_cod <= FE_32APSK_910) {
    write_reg(state, RSTV0910_P2_ACLC2S2Q +
       state->regoff, 0x2a);
    write_reg(state, RSTV0910_P2_ACLC2S232A +
       state->regoff, aclc);
   }
  }
 }
 return 0;
}
