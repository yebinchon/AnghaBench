
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CMD_DMAWMB ;
 int PL330_DBGCMD_DUMP (int ,char*) ;
 int SZ_DMAWMB ;

__attribute__((used)) static inline u32 _emit_WMB(unsigned dry_run, u8 buf[])
{
 if (dry_run)
  return SZ_DMAWMB;

 buf[0] = CMD_DMAWMB;

 PL330_DBGCMD_DUMP(SZ_DMAWMB, "\tDMAWMB\n");

 return SZ_DMAWMB;
}
