
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_feature {int mutex; int feature_num; int allowed; } ;
struct smu_context {int pm_enabled; struct smu_feature smu_feature; } ;


 int SMU_FEATURE_MAX ;
 int bitmap_or (int ,int ,unsigned long*,int ) ;
 int bitmap_zero (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_get_allowed_feature_mask (struct smu_context*,int *,int) ;

int smu_feature_init_dpm(struct smu_context *smu)
{
 struct smu_feature *feature = &smu->smu_feature;
 int ret = 0;
 uint32_t allowed_feature_mask[SMU_FEATURE_MAX/32];

 if (!smu->pm_enabled)
  return ret;
 mutex_lock(&feature->mutex);
 bitmap_zero(feature->allowed, SMU_FEATURE_MAX);
 mutex_unlock(&feature->mutex);

 ret = smu_get_allowed_feature_mask(smu, allowed_feature_mask,
          SMU_FEATURE_MAX/32);
 if (ret)
  return ret;

 mutex_lock(&feature->mutex);
 bitmap_or(feature->allowed, feature->allowed,
        (unsigned long *)allowed_feature_mask,
        feature->feature_num);
 mutex_unlock(&feature->mutex);

 return ret;
}
