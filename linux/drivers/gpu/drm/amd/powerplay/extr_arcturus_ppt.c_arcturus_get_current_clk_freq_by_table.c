
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_3__ {int * CurrClock; int AverageSocclkFrequency; int AverageUclkFrequency; int AverageGfxclkFrequency; } ;
typedef TYPE_1__ SmuMetrics_t ;


 int EINVAL ;



 int SMU_FEATURE_DPM_GFXCLK_BIT ;
 int SMU_FEATURE_DPM_SOCCLK_BIT ;
 int SMU_FEATURE_DPM_UCLK_BIT ;
 int arcturus_get_metrics_table (struct smu_context*,TYPE_1__*) ;
 int smu_clk_get_index (struct smu_context*,int) ;
 int smu_feature_is_enabled (struct smu_context*,int ) ;

__attribute__((used)) static int arcturus_get_current_clk_freq_by_table(struct smu_context *smu,
           enum smu_clk_type clk_type,
           uint32_t *value)
{
 static SmuMetrics_t metrics;
 int ret = 0, clk_id = 0;

 if (!value)
  return -EINVAL;

 clk_id = smu_clk_get_index(smu, clk_type);
 if (clk_id < 0)
  return -EINVAL;

 ret = arcturus_get_metrics_table(smu, &metrics);
 if (ret)
  return ret;

 switch (clk_id) {
 case 130:






  if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_GFXCLK_BIT))
   *value = metrics.CurrClock[130];
  else
   *value = metrics.AverageGfxclkFrequency;
  break;
 case 128:
  if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UCLK_BIT))
   *value = metrics.CurrClock[128];
  else
   *value = metrics.AverageUclkFrequency;
  break;
 case 129:
  if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_SOCCLK_BIT))
   *value = metrics.CurrClock[129];
  else
   *value = metrics.AverageSocclkFrequency;
  break;
 default:
  *value = metrics.CurrClock[clk_id];
  break;
 }

 return ret;
}
