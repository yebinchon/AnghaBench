
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_context {int watermarks_bitmap; TYPE_1__* display_config; } ;
struct TYPE_2__ {int num_display; } ;


 int SMU_FEATURE_DPM_DCEFCLK_BIT ;
 int SMU_FEATURE_DPM_SOCCLK_BIT ;
 int SMU_MSG_NumOfDisplays ;
 int WATERMARKS_EXIST ;
 int WATERMARKS_LOADED ;
 scalar_t__ smu_feature_is_supported (struct smu_context*,int ) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;
 int smu_write_watermarks_table (struct smu_context*) ;

__attribute__((used)) static int navi10_display_config_changed(struct smu_context *smu)
{
 int ret = 0;

 if ((smu->watermarks_bitmap & WATERMARKS_EXIST) &&
     !(smu->watermarks_bitmap & WATERMARKS_LOADED)) {
  ret = smu_write_watermarks_table(smu);
  if (ret)
   return ret;

  smu->watermarks_bitmap |= WATERMARKS_LOADED;
 }

 if ((smu->watermarks_bitmap & WATERMARKS_EXIST) &&
     smu_feature_is_supported(smu, SMU_FEATURE_DPM_DCEFCLK_BIT) &&
     smu_feature_is_supported(smu, SMU_FEATURE_DPM_SOCCLK_BIT)) {
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_NumOfDisplays,
        smu->display_config->num_display);
  if (ret)
   return ret;
 }

 return ret;
}
