
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct SPU2_FMD {int ctrl3; } ;


 int SPU2_PL_LEN ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static void spu2_fmd_ctrl3_write(struct SPU2_FMD *fmd, u64 payload_len)
{
 u64 ctrl3;

 ctrl3 = payload_len & SPU2_PL_LEN;

 fmd->ctrl3 = cpu_to_le64(ctrl3);
}
