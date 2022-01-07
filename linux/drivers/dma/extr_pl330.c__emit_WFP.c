
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum pl330_cond { ____Placeholder_pl330_cond } pl330_cond ;


 int BURST ;
 int CMD_DMAWFP ;
 int PL330_DBGCMD_DUMP (int ,char*,char,int) ;
 int SINGLE ;
 int SZ_DMAWFP ;

__attribute__((used)) static inline u32 _emit_WFP(unsigned dry_run, u8 buf[],
  enum pl330_cond cond, u8 peri)
{
 if (dry_run)
  return SZ_DMAWFP;

 buf[0] = CMD_DMAWFP;

 if (cond == SINGLE)
  buf[0] |= (0 << 1) | (0 << 0);
 else if (cond == BURST)
  buf[0] |= (1 << 1) | (0 << 0);
 else
  buf[0] |= (0 << 1) | (1 << 0);

 peri &= 0x1f;
 peri <<= 3;
 buf[1] = peri;

 PL330_DBGCMD_DUMP(SZ_DMAWFP, "\tDMAWFP%c %u\n",
  cond == SINGLE ? 'S' : (cond == BURST ? 'B' : 'P'), peri >> 3);

 return SZ_DMAWFP;
}
