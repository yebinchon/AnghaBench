
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nxt6000_state {int dummy; } ;


 int EINVAL ;
 int OFDM_TRL_NOMINALRATE_1 ;
 int OFDM_TRL_NOMINALRATE_2 ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static int nxt6000_set_bandwidth(struct nxt6000_state *state, u32 bandwidth)
{
 u16 nominal_rate;
 int result;

 switch (bandwidth) {
 case 6000000:
  nominal_rate = 0x55B7;
  break;

 case 7000000:
  nominal_rate = 0x6400;
  break;

 case 8000000:
  nominal_rate = 0x7249;
  break;

 default:
  return -EINVAL;
 }

 if ((result = nxt6000_writereg(state, OFDM_TRL_NOMINALRATE_1, nominal_rate & 0xFF)) < 0)
  return result;

 return nxt6000_writereg(state, OFDM_TRL_NOMINALRATE_2, (nominal_rate >> 8) & 0xFF);
}
