
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fw_version; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ uvd; } ;


 scalar_t__ CHIP_POLARIS10 ;
 scalar_t__ CHIP_VEGAM ;
 scalar_t__ FW_1_130_16 ;

__attribute__((used)) static inline bool uvd_v6_0_enc_support(struct amdgpu_device *adev)
{
 return ((adev->asic_type >= CHIP_POLARIS10) &&
   (adev->asic_type <= CHIP_VEGAM) &&
   (!adev->uvd.fw_version || adev->uvd.fw_version >= FW_1_130_16));
}
