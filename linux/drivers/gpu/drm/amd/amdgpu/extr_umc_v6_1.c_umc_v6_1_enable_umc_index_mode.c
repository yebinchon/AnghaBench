
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int RSMU ;
 int RSMU_UMC_INDEX_INSTANCE ;
 int RSMU_UMC_INDEX_MODE_EN ;
 int RSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU ;
 int RSMU_UMC_INDEX_WREN ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmRSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU ;

__attribute__((used)) static void umc_v6_1_enable_umc_index_mode(struct amdgpu_device *adev,
        uint32_t umc_instance)
{
 uint32_t rsmu_umc_index;

 rsmu_umc_index = RREG32_SOC15(RSMU, 0,
   mmRSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU);
 rsmu_umc_index = REG_SET_FIELD(rsmu_umc_index,
   RSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU,
   RSMU_UMC_INDEX_MODE_EN, 1);
 rsmu_umc_index = REG_SET_FIELD(rsmu_umc_index,
   RSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU,
   RSMU_UMC_INDEX_INSTANCE, umc_instance);
 rsmu_umc_index = REG_SET_FIELD(rsmu_umc_index,
   RSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU,
   RSMU_UMC_INDEX_WREN, 1 << umc_instance);
 WREG32_SOC15(RSMU, 0, mmRSMU_UMC_INDEX_REGISTER_NBIF_VG20_GPU,
    rsmu_umc_index);
}
