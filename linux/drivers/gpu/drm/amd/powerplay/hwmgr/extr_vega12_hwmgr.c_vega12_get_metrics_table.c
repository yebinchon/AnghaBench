
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vega12_hwmgr {int metrics_table; scalar_t__ metrics_time; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
typedef int SmuMetrics_t ;


 int HZ ;
 int TABLE_SMU_METRICS ;
 scalar_t__ jiffies ;
 int memcpy (int *,int *,int) ;
 int pr_info (char*) ;
 int smum_smc_table_manager (struct pp_hwmgr*,int *,int ,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int vega12_get_metrics_table(struct pp_hwmgr *hwmgr, SmuMetrics_t *metrics_table)
{
 struct vega12_hwmgr *data =
   (struct vega12_hwmgr *)(hwmgr->backend);
 int ret = 0;

 if (!data->metrics_time || time_after(jiffies, data->metrics_time + HZ / 2)) {
  ret = smum_smc_table_manager(hwmgr, (uint8_t *)metrics_table,
    TABLE_SMU_METRICS, 1);
  if (ret) {
   pr_info("Failed to export SMU metrics table!\n");
   return ret;
  }
  memcpy(&data->metrics_table, metrics_table, sizeof(SmuMetrics_t));
  data->metrics_time = jiffies;
 } else
  memcpy(metrics_table, &data->metrics_table, sizeof(SmuMetrics_t));

 return ret;
}
