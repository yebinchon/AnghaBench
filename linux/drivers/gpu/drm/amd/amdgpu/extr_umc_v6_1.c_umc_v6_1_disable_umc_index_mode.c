
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int RSMU ;
 int RSMU_UMC_INDEX_MODE_EN ;
 int RSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void umc_v6_1_disable_umc_index_mode(struct amdgpu_device *adev)
{
 WREG32_FIELD15(RSMU, 0, RSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU,
   RSMU_UMC_INDEX_MODE_EN, 0);
}
