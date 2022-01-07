
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum dmamov_dst { ____Placeholder_dmamov_dst } dmamov_dst ;


 int CMD_DMAMOV ;
 int DAR ;
 int PL330_DBGCMD_DUMP (int,char*,char*,int) ;
 int SAR ;
 int SZ_DMAMOV ;

__attribute__((used)) static inline u32 _emit_MOV(unsigned dry_run, u8 buf[],
  enum dmamov_dst dst, u32 val)
{
 if (dry_run)
  return SZ_DMAMOV;

 buf[0] = CMD_DMAMOV;
 buf[1] = dst;
 buf[2] = val;
 buf[3] = val >> 8;
 buf[4] = val >> 16;
 buf[5] = val >> 24;

 PL330_DBGCMD_DUMP(SZ_DMAMOV, "\tDMAMOV %s 0x%x\n",
  dst == SAR ? "SAR" : (dst == DAR ? "DAR" : "CCR"), val);

 return SZ_DMAMOV;
}
