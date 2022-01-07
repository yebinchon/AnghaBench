
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum pl330_cond { ____Placeholder_pl330_cond } pl330_cond ;


 int BURST ;
 int CMD_DMALD ;
 int PL330_DBGCMD_DUMP (int ,char*,char) ;
 int SINGLE ;
 int SZ_DMALD ;

__attribute__((used)) static inline u32 _emit_LD(unsigned dry_run, u8 buf[], enum pl330_cond cond)
{
 if (dry_run)
  return SZ_DMALD;

 buf[0] = CMD_DMALD;

 if (cond == SINGLE)
  buf[0] |= (0 << 1) | (1 << 0);
 else if (cond == BURST)
  buf[0] |= (1 << 1) | (1 << 0);

 PL330_DBGCMD_DUMP(SZ_DMALD, "\tDMALD%c\n",
  cond == SINGLE ? 'S' : (cond == BURST ? 'B' : 'A'));

 return SZ_DMALD;
}
