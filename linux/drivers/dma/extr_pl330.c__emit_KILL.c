
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CMD_DMAKILL ;
 int SZ_DMAKILL ;

__attribute__((used)) static inline u32 _emit_KILL(unsigned dry_run, u8 buf[])
{
 if (dry_run)
  return SZ_DMAKILL;

 buf[0] = CMD_DMAKILL;

 return SZ_DMAKILL;
}
