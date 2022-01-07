
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_feature {int feature_num; int mutex; int supported; } ;
struct smu_context {struct smu_feature smu_feature; } ;
typedef enum smu_feature_mask { ____Placeholder_smu_feature_mask } smu_feature_mask ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_feature_get_index (struct smu_context*,int) ;
 int test_bit (int,int ) ;

int smu_feature_is_supported(struct smu_context *smu, enum smu_feature_mask mask)
{
 struct smu_feature *feature = &smu->smu_feature;
 int feature_id;
 int ret = 0;

 feature_id = smu_feature_get_index(smu, mask);
 if (feature_id < 0)
  return 0;

 WARN_ON(feature_id > feature->feature_num);

 mutex_lock(&feature->mutex);
 ret = test_bit(feature_id, feature->supported);
 mutex_unlock(&feature->mutex);

 return ret;
}
