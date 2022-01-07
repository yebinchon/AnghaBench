
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ ctrlMode; int R1; int R2; int R3; } ;
struct drxd_state {TYPE_1__ if_agc_cfg; } ;


 scalar_t__ AGC_CTRL_OFF ;
 int FE_AG_REG_GC1_AGC_DAT__A ;
 int FE_AG_REG_GC1_AGC_DAT__M ;
 int Read16 (struct drxd_state*,int ,int*,int ) ;

__attribute__((used)) static int ReadIFAgc(struct drxd_state *state, u32 * pValue)
{
 int status = 0;

 *pValue = 0;
 if (state->if_agc_cfg.ctrlMode != AGC_CTRL_OFF) {
  u16 Value;
  status = Read16(state, FE_AG_REG_GC1_AGC_DAT__A, &Value, 0);
  Value &= FE_AG_REG_GC1_AGC_DAT__M;
  if (status >= 0) {
   u32 R1 = state->if_agc_cfg.R1;
   u32 R2 = state->if_agc_cfg.R2;
   u32 R3 = state->if_agc_cfg.R3;

   u32 Vmax, Rpar, Vmin, Vout;

   if (R2 == 0 && (R1 == 0 || R3 == 0))
    return 0;

   Vmax = (3300 * R2) / (R1 + R2);
   Rpar = (R2 * R3) / (R3 + R2);
   Vmin = (3300 * Rpar) / (R1 + Rpar);
   Vout = Vmin + ((Vmax - Vmin) * Value) / 1024;

   *pValue = Vout;
  }
 }
 return status;
}
