
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {scalar_t__ metrics_time; int metrics_table; } ;
struct smu_table {int dummy; } ;
struct smu_context {struct smu_table_context smu_table; } ;
typedef int SmuMetrics_t ;
typedef int PPTable_t ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SMU11_TOOL_SIZE ;
 int SMU_TABLE_INIT (struct smu_table*,int ,int,int ,int ) ;
 int SMU_TABLE_PMSTATUSLOG ;
 int SMU_TABLE_PPTABLE ;
 int SMU_TABLE_SMU_METRICS ;
 int kzalloc (int,int ) ;

__attribute__((used)) static int arcturus_tables_init(struct smu_context *smu, struct smu_table *tables)
{
 struct smu_table_context *smu_table = &smu->smu_table;

 SMU_TABLE_INIT(tables, SMU_TABLE_PPTABLE, sizeof(PPTable_t),
         PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM);

 SMU_TABLE_INIT(tables, SMU_TABLE_PMSTATUSLOG, SMU11_TOOL_SIZE,
         PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM);

 SMU_TABLE_INIT(tables, SMU_TABLE_SMU_METRICS, sizeof(SmuMetrics_t),
         PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM);

 smu_table->metrics_table = kzalloc(sizeof(SmuMetrics_t), GFP_KERNEL);
 if (!smu_table->metrics_table)
  return -ENOMEM;
 smu_table->metrics_time = 0;

 return 0;
}
