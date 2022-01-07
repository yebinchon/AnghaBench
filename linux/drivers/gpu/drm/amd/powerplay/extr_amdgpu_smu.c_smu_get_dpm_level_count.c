
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int smu_get_dpm_freq_by_index (struct smu_context*,int,int,int *) ;

int smu_get_dpm_level_count(struct smu_context *smu, enum smu_clk_type clk_type,
       uint32_t *value)
{
 return smu_get_dpm_freq_by_index(smu, clk_type, 0xff, value);
}
