
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dib8000_state {int dummy; } ;


 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dib8096p_calcSyncFreq (int,int,int,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static void dib8096p_cfg_DibRx(struct dib8000_state *state, u32 P_Kin,
  u32 P_Kout, u32 synchroMode, u32 insertExtSynchro,
  u32 syncWord, u32 syncSize, u32 dataOutRate)
{
 u32 syncFreq;

 dprintk("Configure DibStream Rx synchroMode = %d\n", synchroMode);

 if ((P_Kin != 0) && (P_Kout != 0)) {
  syncFreq = dib8096p_calcSyncFreq(P_Kin, P_Kout,
    insertExtSynchro, syncSize);
  dib8000_write_word(state, 1542, syncFreq);
 }

 dib8000_write_word(state, 1554, 1);
 dib8000_write_word(state, 1536, P_Kin);
 dib8000_write_word(state, 1537, P_Kout);
 dib8000_write_word(state, 1539, synchroMode);
 dib8000_write_word(state, 1540, (syncWord >> 16) & 0xffff);
 dib8000_write_word(state, 1541, syncWord & 0xffff);
 dib8000_write_word(state, 1543, syncSize);
 dib8000_write_word(state, 1544, dataOutRate);
 dib8000_write_word(state, 1554, 0);
}
