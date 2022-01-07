
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_context {int dummy; } ;
struct TYPE_3__ {int CurrFanSpeed; } ;
typedef TYPE_1__ SmuMetrics_t ;


 int EINVAL ;
 int arcturus_get_metrics_table (struct smu_context*,TYPE_1__*) ;

__attribute__((used)) static int arcturus_get_fan_speed_rpm(struct smu_context *smu,
          uint32_t *speed)
{
 SmuMetrics_t metrics;
 int ret = 0;

 if (!speed)
  return -EINVAL;

 ret = arcturus_get_metrics_table(smu, &metrics);
 if (ret)
  return ret;

 *speed = metrics.CurrFanSpeed;

 return ret;
}
