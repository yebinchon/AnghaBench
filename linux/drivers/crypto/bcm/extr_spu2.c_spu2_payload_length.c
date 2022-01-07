
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct SPU2_FMD {int ctrl3; } ;


 int SPU2_PL_LEN ;
 int le64_to_cpu (int ) ;

u32 spu2_payload_length(u8 *spu_hdr)
{
 struct SPU2_FMD *fmd = (struct SPU2_FMD *)spu_hdr;
 u32 pl_len;
 u64 ctrl3;

 ctrl3 = le64_to_cpu(fmd->ctrl3);
 pl_len = ctrl3 & SPU2_PL_LEN;

 return pl_len;
}
