
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct stv0367_state {int dummy; } ;
typedef int s32 ;


 int F367CAB_AGC_IF_PWMCMD_HI ;
 int F367CAB_AGC_IF_PWMCMD_LO ;
 int F367CAB_RF_AGC1_LEVEL_HI ;
 int F367CAB_RF_AGC1_LEVEL_LO ;
 int F367CAB_STDBY_ADCGP ;
 size_t RF_LOOKUP_TABLE2_SIZE ;
 size_t RF_LOOKUP_TABLE_SIZE ;
 int stv0367_readbits (struct stv0367_state*,int ) ;
 int stv0367_writebits (struct stv0367_state*,int ,int) ;
 int** stv0367cab_RF_LookUp1 ;
 int** stv0367cab_RF_LookUp2 ;

__attribute__((used)) static s32 stv0367cab_get_rf_lvl(struct stv0367_state *state)
{
 s32 rfLevel = 0;
 s32 RfAgcPwm = 0, IfAgcPwm = 0;
 u8 i;

 stv0367_writebits(state, F367CAB_STDBY_ADCGP, 0x0);

 RfAgcPwm =
  (stv0367_readbits(state, F367CAB_RF_AGC1_LEVEL_LO) & 0x03) +
  (stv0367_readbits(state, F367CAB_RF_AGC1_LEVEL_HI) << 2);
 RfAgcPwm = 100 * RfAgcPwm / 1023;

 IfAgcPwm =
  stv0367_readbits(state, F367CAB_AGC_IF_PWMCMD_LO) +
  (stv0367_readbits(state, F367CAB_AGC_IF_PWMCMD_HI) << 8);
 if (IfAgcPwm >= 2048)
  IfAgcPwm -= 2048;
 else
  IfAgcPwm += 2048;

 IfAgcPwm = 100 * IfAgcPwm / 4095;


 if (RfAgcPwm < 90 && IfAgcPwm < 28) {
  for (i = 0; i < RF_LOOKUP_TABLE_SIZE; i++) {
   if (RfAgcPwm <= stv0367cab_RF_LookUp1[0][i]) {
    rfLevel = (-1) * stv0367cab_RF_LookUp1[1][i];
    break;
   }
  }
  if (i == RF_LOOKUP_TABLE_SIZE)
   rfLevel = -56;
 } else {
  for (i = 0; i < RF_LOOKUP_TABLE2_SIZE; i++) {
   if (IfAgcPwm <= stv0367cab_RF_LookUp2[0][i]) {
    rfLevel = (-1) * stv0367cab_RF_LookUp2[1][i];
    break;
   }
  }
  if (i == RF_LOOKUP_TABLE2_SIZE)
   rfLevel = -72;
 }
 return rfLevel;
}
