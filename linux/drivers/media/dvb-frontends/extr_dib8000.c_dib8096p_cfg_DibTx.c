
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dib8000_state {int dummy; } ;


 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dprintk (char*) ;

__attribute__((used)) static void dib8096p_cfg_DibTx(struct dib8000_state *state, u32 P_Kin,
  u32 P_Kout, u32 insertExtSynchro, u32 synchroMode,
  u32 syncWord, u32 syncSize)
{
 dprintk("Configure DibStream Tx\n");

 dib8000_write_word(state, 1615, 1);
 dib8000_write_word(state, 1603, P_Kin);
 dib8000_write_word(state, 1605, P_Kout);
 dib8000_write_word(state, 1606, insertExtSynchro);
 dib8000_write_word(state, 1608, synchroMode);
 dib8000_write_word(state, 1609, (syncWord >> 16) & 0xffff);
 dib8000_write_word(state, 1610, syncWord & 0xffff);
 dib8000_write_word(state, 1612, syncSize);
 dib8000_write_word(state, 1615, 0);
}
