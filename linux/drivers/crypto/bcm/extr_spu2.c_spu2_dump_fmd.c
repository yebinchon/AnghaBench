
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SPU2_FMD {int ctrl3; int ctrl2; int ctrl1; int ctrl0; } ;


 int le64_to_cpu (int ) ;
 int spu2_dump_fmd_ctrl0 (int ) ;
 int spu2_dump_fmd_ctrl1 (int ) ;
 int spu2_dump_fmd_ctrl2 (int ) ;
 int spu2_dump_fmd_ctrl3 (int ) ;

__attribute__((used)) static void spu2_dump_fmd(struct SPU2_FMD *fmd)
{
 spu2_dump_fmd_ctrl0(le64_to_cpu(fmd->ctrl0));
 spu2_dump_fmd_ctrl1(le64_to_cpu(fmd->ctrl1));
 spu2_dump_fmd_ctrl2(le64_to_cpu(fmd->ctrl2));
 spu2_dump_fmd_ctrl3(le64_to_cpu(fmd->ctrl3));
}
