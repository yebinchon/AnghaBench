
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * clocks_table; } ;
struct smu_context {TYPE_1__ smu_table; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
struct TYPE_4__ {int* ClockFrequency; int member_0; } ;
typedef TYPE_2__ SmuMetrics_t ;
typedef int DpmClocks_t ;


 size_t CLOCK_DCFCLK ;
 size_t CLOCK_FCLK ;
 size_t CLOCK_GFXCLK ;
 size_t CLOCK_SOCCLK ;
 size_t CLOCK_UMCCLK ;
 int EINVAL ;
 int GET_DPM_CUR_FREQ (int *,int,int,int) ;
 int NUM_DCFCLK_DPM_LEVELS ;
 int NUM_FCLK_DPM_LEVELS ;
 int NUM_MEMCLK_DPM_LEVELS ;
 int NUM_SOCCLK_DPM_LEVELS ;
 int RENOIR_UMD_PSTATE_GFXCLK ;
 int SMU_CLK_COUNT ;






 int SMU_TABLE_SMU_METRICS ;
 int smu_get_dpm_freq_range (struct smu_context*,int const,int*,int*) ;
 int smu_update_table (struct smu_context*,int ,int ,void*,int) ;
 scalar_t__ sprintf (char*,char*,int,...) ;

__attribute__((used)) static int renoir_print_clk_levels(struct smu_context *smu,
   enum smu_clk_type clk_type, char *buf)
{
 int i, size = 0, ret = 0;
 uint32_t cur_value = 0, value = 0, count = 0, min = 0, max = 0;
 DpmClocks_t *clk_table = smu->smu_table.clocks_table;
 SmuMetrics_t metrics = {0};

 if (!clk_table || clk_type >= SMU_CLK_COUNT)
  return -EINVAL;

 ret = smu_update_table(smu, SMU_TABLE_SMU_METRICS, 0,
          (void *)&metrics, 0);
 if (ret)
  return ret;

 switch (clk_type) {
 case 131:
 case 129:

  cur_value = metrics.ClockFrequency[CLOCK_GFXCLK];
  ret = smu_get_dpm_freq_range(smu, 131, &min, &max);
  if (!ret) {

   if (cur_value == max)
    i = 2;
   else if (cur_value == min)
    i = 0;
   else
    i = 1;

   size += sprintf(buf + size, "0: %uMhz %s\n", min,
     i == 0 ? "*" : "");
   size += sprintf(buf + size, "1: %uMhz %s\n",
     i == 1 ? cur_value : RENOIR_UMD_PSTATE_GFXCLK,
     i == 1 ? "*" : "");
   size += sprintf(buf + size, "2: %uMhz %s\n", max,
     i == 2 ? "*" : "");
  }
  return size;
 case 128:
  count = NUM_SOCCLK_DPM_LEVELS;
  cur_value = metrics.ClockFrequency[CLOCK_SOCCLK];
  break;
 case 130:
  count = NUM_MEMCLK_DPM_LEVELS;
  cur_value = metrics.ClockFrequency[CLOCK_UMCCLK];
  break;
 case 133:
  count = NUM_DCFCLK_DPM_LEVELS;
  cur_value = metrics.ClockFrequency[CLOCK_DCFCLK];
  break;
 case 132:
  count = NUM_FCLK_DPM_LEVELS;
  cur_value = metrics.ClockFrequency[CLOCK_FCLK];
  break;
 default:
  return -EINVAL;
 }

 for (i = 0; i < count; i++) {
  GET_DPM_CUR_FREQ(clk_table, clk_type, i, value);
  size += sprintf(buf + size, "%d: %uMhz %s\n", i, value,
    cur_value == value ? "*" : "");
 }

 return size;
}
