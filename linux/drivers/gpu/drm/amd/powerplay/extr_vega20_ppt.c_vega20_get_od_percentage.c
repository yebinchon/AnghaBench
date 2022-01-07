
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega20_single_dpm_table {int count; TYPE_1__* dpm_levels; } ;
struct vega20_dpm_table {struct vega20_single_dpm_table mem_table; struct vega20_single_dpm_table gfx_table; } ;
struct smu_dpm_context {struct vega20_dpm_table* golden_dpm_context; struct vega20_dpm_table* dpm_context; } ;
struct smu_context {struct smu_dpm_context smu_dpm; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_2__ {int value; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;



__attribute__((used)) static int vega20_get_od_percentage(struct smu_context *smu,
        enum smu_clk_type clk_type)
{
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
 struct vega20_dpm_table *dpm_table = ((void*)0);
 struct vega20_dpm_table *golden_table = ((void*)0);
 struct vega20_single_dpm_table *single_dpm_table;
 struct vega20_single_dpm_table *golden_dpm_table;
 int value, golden_value;

 dpm_table = smu_dpm->dpm_context;
 golden_table = smu_dpm->golden_dpm_context;

 switch (clk_type) {
 case 128:
  single_dpm_table = &(dpm_table->gfx_table);
  golden_dpm_table = &(golden_table->gfx_table);
  break;
 case 129:
  single_dpm_table = &(dpm_table->mem_table);
  golden_dpm_table = &(golden_table->mem_table);
  break;
 default:
  return -EINVAL;
  break;
 }

 value = single_dpm_table->dpm_levels[single_dpm_table->count - 1].value;
 golden_value = golden_dpm_table->dpm_levels[golden_dpm_table->count - 1].value;

 value -= golden_value;
 value = DIV_ROUND_UP(value * 100, golden_value);

 return value;
}
