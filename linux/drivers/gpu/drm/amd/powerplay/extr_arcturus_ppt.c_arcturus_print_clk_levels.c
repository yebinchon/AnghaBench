
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu_dpm_context {struct arcturus_dpm_table* dpm_context; } ;
struct smu_context {struct smu_dpm_context smu_dpm; } ;
struct pp_clock_levels_with_latency {int num_levels; TYPE_2__* data; } ;
struct arcturus_single_dpm_table {int count; TYPE_1__* dpm_levels; } ;
struct arcturus_dpm_table {struct arcturus_single_dpm_table fclk_table; struct arcturus_single_dpm_table soc_table; struct arcturus_single_dpm_table mem_table; struct arcturus_single_dpm_table gfx_table; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_4__ {int clocks_in_khz; } ;
struct TYPE_3__ {int value; } ;



 int const SMU_GFXCLK ;



 int const SMU_UCLK ;
 int arcturus_freqs_in_same_level (int,int) ;
 int arcturus_get_clk_table (struct smu_context*,struct pp_clock_levels_with_latency*,struct arcturus_single_dpm_table*) ;
 int pr_err (char*) ;
 int smu_get_current_clk_freq (struct smu_context*,int const,int*) ;
 int sprintf (char*,char*,int,int,char*) ;

__attribute__((used)) static int arcturus_print_clk_levels(struct smu_context *smu,
   enum smu_clk_type type, char *buf)
{
 int i, now, size = 0;
 int ret = 0;
 struct pp_clock_levels_with_latency clocks;
 struct arcturus_single_dpm_table *single_dpm_table;
 struct smu_dpm_context *smu_dpm = &smu->smu_dpm;
 struct arcturus_dpm_table *dpm_table = ((void*)0);

 dpm_table = smu_dpm->dpm_context;

 switch (type) {
 case 129:
  ret = smu_get_current_clk_freq(smu, SMU_GFXCLK, &now);
  if (ret) {
   pr_err("Attempt to get current gfx clk Failed!");
   return ret;
  }

  single_dpm_table = &(dpm_table->gfx_table);
  ret = arcturus_get_clk_table(smu, &clocks, single_dpm_table);
  if (ret) {
   pr_err("Attempt to get gfx clk levels Failed!");
   return ret;
  }

  for (i = 0; i < clocks.num_levels; i++)
   size += sprintf(buf + size, "%d: %uMhz %s\n", i,
     clocks.data[i].clocks_in_khz / 1000,
     arcturus_freqs_in_same_level(
     clocks.data[i].clocks_in_khz / 1000,
     now / 100) ? "*" : "");
  break;

 case 130:
  ret = smu_get_current_clk_freq(smu, SMU_UCLK, &now);
  if (ret) {
   pr_err("Attempt to get current mclk Failed!");
   return ret;
  }

  single_dpm_table = &(dpm_table->mem_table);
  ret = arcturus_get_clk_table(smu, &clocks, single_dpm_table);
  if (ret) {
   pr_err("Attempt to get memory clk levels Failed!");
   return ret;
  }

  for (i = 0; i < clocks.num_levels; i++)
   size += sprintf(buf + size, "%d: %uMhz %s\n",
    i, clocks.data[i].clocks_in_khz / 1000,
    arcturus_freqs_in_same_level(
    clocks.data[i].clocks_in_khz / 1000,
    now / 100) ? "*" : "");
  break;

 case 128:
  ret = smu_get_current_clk_freq(smu, 128, &now);
  if (ret) {
   pr_err("Attempt to get current socclk Failed!");
   return ret;
  }

  single_dpm_table = &(dpm_table->soc_table);
  ret = arcturus_get_clk_table(smu, &clocks, single_dpm_table);
  if (ret) {
   pr_err("Attempt to get socclk levels Failed!");
   return ret;
  }

  for (i = 0; i < clocks.num_levels; i++)
   size += sprintf(buf + size, "%d: %uMhz %s\n",
    i, clocks.data[i].clocks_in_khz / 1000,
    arcturus_freqs_in_same_level(
    clocks.data[i].clocks_in_khz / 1000,
    now / 100) ? "*" : "");
  break;

 case 131:
  ret = smu_get_current_clk_freq(smu, 131, &now);
  if (ret) {
   pr_err("Attempt to get current fclk Failed!");
   return ret;
  }

  single_dpm_table = &(dpm_table->fclk_table);
  ret = arcturus_get_clk_table(smu, &clocks, single_dpm_table);
  if (ret) {
   pr_err("Attempt to get fclk levels Failed!");
   return ret;
  }

  for (i = 0; i < single_dpm_table->count; i++)
   size += sprintf(buf + size, "%d: %uMhz %s\n",
    i, single_dpm_table->dpm_levels[i].value,
    arcturus_freqs_in_same_level(
    clocks.data[i].clocks_in_khz / 1000,
    now / 100) ? "*" : "");
  break;

 default:
  break;
 }

 return size;
}
