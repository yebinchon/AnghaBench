
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int GRBM_GFX_INDEX ;
 int INSTANCE_BROADCAST_WRITES ;
 int SE_BROADCAST_WRITES ;
 int SE_INDEX (int) ;
 int SH_BROADCAST_WRITES ;
 int SH_INDEX (int) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void cik_select_se_sh(struct radeon_device *rdev,
        u32 se_num, u32 sh_num)
{
 u32 data = INSTANCE_BROADCAST_WRITES;

 if ((se_num == 0xffffffff) && (sh_num == 0xffffffff))
  data |= SH_BROADCAST_WRITES | SE_BROADCAST_WRITES;
 else if (se_num == 0xffffffff)
  data |= SE_BROADCAST_WRITES | SH_INDEX(sh_num);
 else if (sh_num == 0xffffffff)
  data |= SH_BROADCAST_WRITES | SE_INDEX(se_num);
 else
  data |= SH_INDEX(sh_num) | SE_INDEX(se_num);
 WREG32(GRBM_GFX_INDEX, data);
}
