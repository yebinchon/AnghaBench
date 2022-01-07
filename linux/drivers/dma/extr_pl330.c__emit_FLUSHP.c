
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CMD_DMAFLUSHP ;
 int PL330_DBGCMD_DUMP (int ,char*,int) ;
 int SZ_DMAFLUSHP ;

__attribute__((used)) static inline u32 _emit_FLUSHP(unsigned dry_run, u8 buf[], u8 peri)
{
 if (dry_run)
  return SZ_DMAFLUSHP;

 buf[0] = CMD_DMAFLUSHP;

 peri &= 0x1f;
 peri <<= 3;
 buf[1] = peri;

 PL330_DBGCMD_DUMP(SZ_DMAFLUSHP, "\tDMAFLUSHP %u\n", peri >> 3);

 return SZ_DMAFLUSHP;
}
