
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smu_context {int watermarks_bitmap; } ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {TYPE_2__ rlc; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gfx; scalar_t__ in_gpu_reset; struct smu_context smu; } ;
struct TYPE_4__ {int (* stop ) (struct amdgpu_device*) ;} ;


 scalar_t__ CHIP_NAVI10 ;
 int SMU_FEATURE_BACO_BIT ;
 int WATERMARKS_LOADED ;
 int pr_warn (char*,int) ;
 int smu_feature_is_enabled (struct smu_context*,int ) ;
 int smu_feature_set_enabled (struct smu_context*,int ,int) ;
 int smu_system_features_control (struct smu_context*,int) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int smu_suspend(void *handle)
{
 int ret;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct smu_context *smu = &adev->smu;
 bool baco_feature_is_enabled = smu_feature_is_enabled(smu, SMU_FEATURE_BACO_BIT);

 ret = smu_system_features_control(smu, 0);
 if (ret)
  return ret;

 if (adev->in_gpu_reset && baco_feature_is_enabled) {
  ret = smu_feature_set_enabled(smu, SMU_FEATURE_BACO_BIT, 1);
  if (ret) {
   pr_warn("set BACO feature enabled failed, return %d\n", ret);
   return ret;
  }
 }

 smu->watermarks_bitmap &= ~(WATERMARKS_LOADED);

 if (adev->asic_type >= CHIP_NAVI10 &&
     adev->gfx.rlc.funcs->stop)
  adev->gfx.rlc.funcs->stop(adev);

 return 0;
}
