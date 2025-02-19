
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_3__ {int * CurrClock; } ;
typedef TYPE_1__ SmuMetrics_t ;


 int navi10_get_metrics_table (struct smu_context*,TYPE_1__*) ;
 int smu_clk_get_index (struct smu_context*,int) ;

__attribute__((used)) static int navi10_get_current_clk_freq_by_table(struct smu_context *smu,
           enum smu_clk_type clk_type,
           uint32_t *value)
{
 int ret = 0, clk_id = 0;
 SmuMetrics_t metrics;

 ret = navi10_get_metrics_table(smu, &metrics);
 if (ret)
  return ret;

 clk_id = smu_clk_get_index(smu, clk_type);
 if (clk_id < 0)
  return clk_id;

 *value = metrics.CurrClock[clk_id];

 return ret;
}
