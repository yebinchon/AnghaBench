
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PS_PHASE_MASK ;
 int PS_PHASE_TRIP ;
 int WARN_ON (int) ;

u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
{
 int phase = -0x8000;
 u16 trip = 0;

 if (chroma_cosited)
  phase += (sub - 1) * 0x8000 / sub;

 phase += scale / (2 * sub);






 WARN_ON(phase < -0x8000 || phase > 0x18000);

 if (phase < 0)
  phase = 0x10000 + phase;
 else
  trip = PS_PHASE_TRIP;

 return ((phase >> 2) & PS_PHASE_MASK) | trip;
}
