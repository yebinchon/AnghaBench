
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CMD_DMASEV ;
 int PL330_DBGCMD_DUMP (int ,char*,int) ;
 int SZ_DMASEV ;

__attribute__((used)) static inline u32 _emit_SEV(unsigned dry_run, u8 buf[], u8 ev)
{
 if (dry_run)
  return SZ_DMASEV;

 buf[0] = CMD_DMASEV;

 ev &= 0x1f;
 ev <<= 3;
 buf[1] = ev;

 PL330_DBGCMD_DUMP(SZ_DMASEV, "\tDMASEV %u\n", ev >> 3);

 return SZ_DMASEV;
}
