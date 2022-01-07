
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int uclk; int gfxclk; int socclk; } ;
struct TYPE_4__ {TYPE_1__ boot_values; } ;
struct smu_context {TYPE_2__ smu_table; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int EINVAL ;





 int smu_clk_dpm_is_enabled (struct smu_context*,int) ;
 int smu_get_dpm_ultimate_freq (struct smu_context*,int,int*,int*) ;

int smu_get_dpm_freq_range(struct smu_context *smu, enum smu_clk_type clk_type,
      uint32_t *min, uint32_t *max)
{
 uint32_t clock_limit;
 int ret = 0;

 if (!min && !max)
  return -EINVAL;

 if (!smu_clk_dpm_is_enabled(smu, clk_type)) {
  switch (clk_type) {
  case 131:
  case 128:
   clock_limit = smu->smu_table.boot_values.uclk;
   break;
  case 132:
  case 130:
   clock_limit = smu->smu_table.boot_values.gfxclk;
   break;
  case 129:
   clock_limit = smu->smu_table.boot_values.socclk;
   break;
  default:
   clock_limit = 0;
   break;
  }


  if (min)
   *min = clock_limit / 100;
  if (max)
   *max = clock_limit / 100;

  return 0;
 }




 ret = smu_get_dpm_ultimate_freq(smu, clk_type, min, max);
 return ret;
}
