
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;
struct TYPE_3__ {int AverageUclkActivity; int AverageGfxActivity; } ;
typedef TYPE_1__ SmuMetrics_t ;




 int EINVAL ;
 int pr_err (char*) ;
 int vega20_get_metrics_table (struct pp_hwmgr*,TYPE_1__*) ;

__attribute__((used)) static int vega20_get_current_activity_percent(struct pp_hwmgr *hwmgr,
  int idx,
  uint32_t *activity_percent)
{
 int ret = 0;
 SmuMetrics_t metrics_table;

 ret = vega20_get_metrics_table(hwmgr, &metrics_table);
 if (ret)
  return ret;

 switch (idx) {
 case 129:
  *activity_percent = metrics_table.AverageGfxActivity;
  break;
 case 128:
  *activity_percent = metrics_table.AverageUclkActivity;
  break;
 default:
  pr_err("Invalid index for retrieving clock activity\n");
  return -EINVAL;
 }

 return ret;
}
