
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vega20_single_dpm_table {int dummy; } ;
struct vega20_dpm_table {struct vega20_single_dpm_table soc_table; struct vega20_single_dpm_table dcef_table; struct vega20_single_dpm_table mem_table; struct vega20_single_dpm_table gfx_table; } ;
struct smu_dpm_context {struct vega20_dpm_table* dpm_context; } ;
struct smu_context {int mutex; struct smu_dpm_context smu_dpm; } ;
struct pp_clock_levels_with_latency {int dummy; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int EINVAL ;




 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vega20_get_clk_table (struct smu_context*,struct pp_clock_levels_with_latency*,struct vega20_single_dpm_table*) ;

__attribute__((used)) static int vega20_get_clock_by_type_with_latency(struct smu_context *smu,
       enum smu_clk_type clk_type,
       struct pp_clock_levels_with_latency *clocks)
{
 int ret;
 struct vega20_single_dpm_table *single_dpm_table;
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
 struct vega20_dpm_table *dpm_table = ((void*)0);

 dpm_table = smu_dpm->dpm_context;

 mutex_lock(&smu->mutex);

 switch (clk_type) {
 case 130:
  single_dpm_table = &(dpm_table->gfx_table);
  ret = vega20_get_clk_table(smu, clocks, single_dpm_table);
  break;
 case 129:
  single_dpm_table = &(dpm_table->mem_table);
  ret = vega20_get_clk_table(smu, clocks, single_dpm_table);
  break;
 case 131:
  single_dpm_table = &(dpm_table->dcef_table);
  ret = vega20_get_clk_table(smu, clocks, single_dpm_table);
  break;
 case 128:
  single_dpm_table = &(dpm_table->soc_table);
  ret = vega20_get_clk_table(smu, clocks, single_dpm_table);
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&smu->mutex);
 return ret;
}
