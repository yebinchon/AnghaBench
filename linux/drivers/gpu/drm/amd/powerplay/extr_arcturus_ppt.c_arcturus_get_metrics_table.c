
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {scalar_t__ metrics_table; scalar_t__ metrics_time; } ;
struct smu_context {struct smu_table_context smu_table; } ;
typedef int SmuMetrics_t ;


 int HZ ;
 int SMU_TABLE_SMU_METRICS ;
 scalar_t__ jiffies ;
 int memcpy (int *,scalar_t__,int) ;
 int pr_info (char*) ;
 int smu_update_table (struct smu_context*,int ,int ,void*,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int arcturus_get_metrics_table(struct smu_context *smu,
          SmuMetrics_t *metrics_table)
{
 struct smu_table_context *smu_table= &smu->smu_table;
 int ret = 0;

 if (!smu_table->metrics_time ||
      time_after(jiffies, smu_table->metrics_time + HZ / 1000)) {
  ret = smu_update_table(smu, SMU_TABLE_SMU_METRICS, 0,
    (void *)smu_table->metrics_table, 0);
  if (ret) {
   pr_info("Failed to export SMU metrics table!\n");
   return ret;
  }
  smu_table->metrics_time = jiffies;
 }

 memcpy(metrics_table, smu_table->metrics_table, sizeof(SmuMetrics_t));

 return ret;
}
