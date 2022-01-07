
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt6000_state {int dummy; } ;
typedef enum fe_spectral_inversion { ____Placeholder_fe_spectral_inversion } fe_spectral_inversion ;


 int EINVAL ;


 int ITBINV ;
 int OFDM_ITB_CTL ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static int nxt6000_set_inversion(struct nxt6000_state *state,
     enum fe_spectral_inversion inversion)
{
 switch (inversion) {

 case 129:
  return nxt6000_writereg(state, OFDM_ITB_CTL, 0x00);

 case 128:
  return nxt6000_writereg(state, OFDM_ITB_CTL, ITBINV);

 default:
  return -EINVAL;

 }
}
