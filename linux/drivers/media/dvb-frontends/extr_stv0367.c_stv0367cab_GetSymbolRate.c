
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0367_state {int dummy; } ;


 int R367CAB_SRC_NCO_HH ;
 int R367CAB_SRC_NCO_HL ;
 int R367CAB_SRC_NCO_LH ;
 int R367CAB_SRC_NCO_LL ;
 int stv0367_readreg (struct stv0367_state*,int ) ;

__attribute__((used)) static u32 stv0367cab_GetSymbolRate(struct stv0367_state *state, u32 mclk_hz)
{
 u32 regsym;
 u32 adp_khz;

 regsym = stv0367_readreg(state, R367CAB_SRC_NCO_LL) +
  (stv0367_readreg(state, R367CAB_SRC_NCO_LH) << 8) +
  (stv0367_readreg(state, R367CAB_SRC_NCO_HL) << 16) +
  (stv0367_readreg(state, R367CAB_SRC_NCO_HH) << 24);

 adp_khz = (mclk_hz >> 1) / 1000;

 if (regsym < 134217728) {
  regsym = regsym * 32;
  regsym = regsym / 32768;
  regsym = adp_khz * regsym;
  regsym = regsym / 128;
  regsym *= 125 ;
  regsym /= 2048 ;
 } else if (regsym < 268435456) {
  regsym = regsym * 16;
  regsym = regsym / 32768;
  regsym = adp_khz * regsym;
  regsym = regsym / 128;
  regsym *= 125 ;
  regsym /= 1024 ;
 } else if (regsym < 536870912) {
  regsym = regsym * 8;
  regsym = regsym / 32768;
  regsym = adp_khz * regsym;
  regsym = regsym / 128;
  regsym *= 125 ;
  regsym /= 512 ;
 } else {
  regsym = regsym * 4;
  regsym = regsym / 32768;
  regsym = adp_khz * regsym;
  regsym = regsym / 128;
  regsym *= 125 ;
  regsym /= 256 ;
 }

 return regsym;
}
