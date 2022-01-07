
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxd_state {int type_A; } ;
struct SNoiseCal {int cpNexpOfs; int tdCal2k; int tdCal8k; scalar_t__ cpOpt; } ;


 int B_SC_RA_RAM_CO_TD_CAL_2K__A ;
 int B_SC_RA_RAM_CO_TD_CAL_8K__A ;
 int CP_REG_AC_NEXP_OFFS__A ;
 int Read16 (struct drxd_state*,int ,int*,int ) ;
 int SC_RA_RAM_BE_OPT_ENA_CP_OPT ;
 int SC_RA_RAM_BE_OPT_ENA__A ;
 int Write16 (struct drxd_state*,int ,int,int ) ;

__attribute__((used)) static int SetCfgNoiseCalibration(struct drxd_state *state,
      struct SNoiseCal *noiseCal)
{
 u16 beOptEna;
 int status = 0;

 do {
  status = Read16(state, SC_RA_RAM_BE_OPT_ENA__A, &beOptEna, 0);
  if (status < 0)
   break;
  if (noiseCal->cpOpt) {
   beOptEna |= (1 << SC_RA_RAM_BE_OPT_ENA_CP_OPT);
  } else {
   beOptEna &= ~(1 << SC_RA_RAM_BE_OPT_ENA_CP_OPT);
   status = Write16(state, CP_REG_AC_NEXP_OFFS__A, noiseCal->cpNexpOfs, 0);
   if (status < 0)
    break;
  }
  status = Write16(state, SC_RA_RAM_BE_OPT_ENA__A, beOptEna, 0);
  if (status < 0)
   break;

  if (!state->type_A) {
   status = Write16(state, B_SC_RA_RAM_CO_TD_CAL_2K__A, noiseCal->tdCal2k, 0);
   if (status < 0)
    break;
   status = Write16(state, B_SC_RA_RAM_CO_TD_CAL_8K__A, noiseCal->tdCal8k, 0);
   if (status < 0)
    break;
  }
 } while (0);

 return status;
}
