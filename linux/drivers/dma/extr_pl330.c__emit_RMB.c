
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CMD_DMARMB ;
 int PL330_DBGCMD_DUMP (int ,char*) ;
 int SZ_DMARMB ;

__attribute__((used)) static inline u32 _emit_RMB(unsigned dry_run, u8 buf[])
{
 if (dry_run)
  return SZ_DMARMB;

 buf[0] = CMD_DMARMB;

 PL330_DBGCMD_DUMP(SZ_DMARMB, "\tDMARMB\n");

 return SZ_DMARMB;
}
