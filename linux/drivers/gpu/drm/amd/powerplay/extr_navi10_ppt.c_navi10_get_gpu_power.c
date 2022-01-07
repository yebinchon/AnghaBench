
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_context {int dummy; } ;
struct TYPE_3__ {int AverageSocketPower; } ;
typedef TYPE_1__ SmuMetrics_t ;


 int EINVAL ;
 int navi10_get_metrics_table (struct smu_context*,TYPE_1__*) ;

__attribute__((used)) static int navi10_get_gpu_power(struct smu_context *smu, uint32_t *value)
{
 int ret = 0;
 SmuMetrics_t metrics;

 if (!value)
  return -EINVAL;

 ret = navi10_get_metrics_table(smu, &metrics);
 if (ret)
  return ret;

 *value = metrics.AverageSocketPower << 8;

 return 0;
}
