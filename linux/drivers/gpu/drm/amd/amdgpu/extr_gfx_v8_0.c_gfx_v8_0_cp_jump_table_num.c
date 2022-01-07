
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_CARRIZO ;

__attribute__((used)) static int gfx_v8_0_cp_jump_table_num(struct amdgpu_device *adev)
{
 if (adev->asic_type == CHIP_CARRIZO)
  return 5;
 else
  return 4;
}
