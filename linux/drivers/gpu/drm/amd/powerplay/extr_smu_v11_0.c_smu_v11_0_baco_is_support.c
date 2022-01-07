
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_baco_context {int platform_support; int mutex; } ;
struct smu_context {struct smu_baco_context smu_baco; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;


 int NBIO ;
 int RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int SMU_FEATURE_BACO_BIT ;
 int mmRCC_BIF_STRAP0 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_feature_is_enabled (struct smu_context*,int ) ;

__attribute__((used)) static bool smu_v11_0_baco_is_support(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;
 struct smu_baco_context *smu_baco = &smu->smu_baco;
 uint32_t val;
 bool baco_support;

 mutex_lock(&smu_baco->mutex);
 baco_support = smu_baco->platform_support;
 mutex_unlock(&smu_baco->mutex);

 if (!baco_support)
  return 0;

 if (!smu_feature_is_enabled(smu, SMU_FEATURE_BACO_BIT))
  return 0;

 val = RREG32_SOC15(NBIO, 0, mmRCC_BIF_STRAP0);
 if (val & RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK)
  return 1;

 return 0;
}
