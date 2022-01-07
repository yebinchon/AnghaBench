
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CMD_DMALP ;
 int PL330_DBGCMD_DUMP (int ,char*,char,int) ;
 int SZ_DMALP ;

__attribute__((used)) static inline u32 _emit_LP(unsigned dry_run, u8 buf[],
  unsigned loop, u8 cnt)
{
 if (dry_run)
  return SZ_DMALP;

 buf[0] = CMD_DMALP;

 if (loop)
  buf[0] |= (1 << 1);

 cnt--;
 buf[1] = cnt;

 PL330_DBGCMD_DUMP(SZ_DMALP, "\tDMALP_%c %u\n", loop ? '1' : '0', cnt);

 return SZ_DMALP;
}
