
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 dib8096p_calcSyncFreq(u32 P_Kin, u32 P_Kout,
  u32 insertExtSynchro, u32 syncSize)
{
 u32 quantif = 3;
 u32 nom = (insertExtSynchro * P_Kin+syncSize);
 u32 denom = P_Kout;
 u32 syncFreq = ((nom << quantif) / denom);

 if ((syncFreq & ((1 << quantif) - 1)) != 0)
  syncFreq = (syncFreq >> quantif) + 1;
 else
  syncFreq = (syncFreq >> quantif);

 if (syncFreq != 0)
  syncFreq = syncFreq - 1;

 return syncFreq;
}
