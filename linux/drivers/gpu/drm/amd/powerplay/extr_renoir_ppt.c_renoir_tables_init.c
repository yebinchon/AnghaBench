
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int clocks_table; } ;
struct smu_table {int dummy; } ;
struct smu_context {struct smu_table_context smu_table; } ;
typedef int Watermarks_t ;
typedef int SmuMetrics_t ;
typedef int DpmClocks_t ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SMU_TABLE_DPMCLOCKS ;
 int SMU_TABLE_INIT (struct smu_table*,int ,int,int ,int ) ;
 int SMU_TABLE_SMU_METRICS ;
 int SMU_TABLE_WATERMARKS ;
 int kzalloc (int,int ) ;

__attribute__((used)) static int renoir_tables_init(struct smu_context *smu, struct smu_table *tables)
{
 struct smu_table_context *smu_table = &smu->smu_table;

 SMU_TABLE_INIT(tables, SMU_TABLE_WATERMARKS, sizeof(Watermarks_t),
  PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM);
 SMU_TABLE_INIT(tables, SMU_TABLE_DPMCLOCKS, sizeof(DpmClocks_t),
  PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM);
 SMU_TABLE_INIT(tables, SMU_TABLE_SMU_METRICS, sizeof(SmuMetrics_t),
  PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM);

 smu_table->clocks_table = kzalloc(sizeof(DpmClocks_t), GFP_KERNEL);
 if (!smu_table->clocks_table)
  return -ENOMEM;

 return 0;
}
