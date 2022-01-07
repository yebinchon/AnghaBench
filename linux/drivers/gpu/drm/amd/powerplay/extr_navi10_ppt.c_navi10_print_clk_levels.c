
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;
 int navi10_is_support_fine_grained_dpm (struct smu_context*,int) ;
 int smu_get_current_clk_freq (struct smu_context*,int,int*) ;
 int smu_get_dpm_freq_by_index (struct smu_context*,int,int,int*) ;
 int smu_get_dpm_level_count (struct smu_context*,int,int*) ;
 int sprintf (char*,char*,int,int,char*) ;

__attribute__((used)) static int navi10_print_clk_levels(struct smu_context *smu,
   enum smu_clk_type clk_type, char *buf)
{
 int i, size = 0, ret = 0;
 uint32_t cur_value = 0, value = 0, count = 0;
 uint32_t freq_values[3] = {0};
 uint32_t mark_index = 0;

 switch (clk_type) {
 case 132:
 case 130:
 case 129:
 case 131:
 case 128:
 case 133:
 case 134:
  ret = smu_get_current_clk_freq(smu, clk_type, &cur_value);
  if (ret)
   return size;


  cur_value = cur_value / 100;

  ret = smu_get_dpm_level_count(smu, clk_type, &count);
  if (ret)
   return size;

  if (!navi10_is_support_fine_grained_dpm(smu, clk_type)) {
   for (i = 0; i < count; i++) {
    ret = smu_get_dpm_freq_by_index(smu, clk_type, i, &value);
    if (ret)
     return size;

    size += sprintf(buf + size, "%d: %uMhz %s\n", i, value,
      cur_value == value ? "*" : "");
   }
  } else {
   ret = smu_get_dpm_freq_by_index(smu, clk_type, 0, &freq_values[0]);
   if (ret)
    return size;
   ret = smu_get_dpm_freq_by_index(smu, clk_type, count - 1, &freq_values[2]);
   if (ret)
    return size;

   freq_values[1] = cur_value;
   mark_index = cur_value == freq_values[0] ? 0 :
         cur_value == freq_values[2] ? 2 : 1;
   if (mark_index != 1)
    freq_values[1] = (freq_values[0] + freq_values[2]) / 2;

   for (i = 0; i < 3; i++) {
    size += sprintf(buf + size, "%d: %uMhz %s\n", i, freq_values[i],
      i == mark_index ? "*" : "");
   }

  }
  break;
 default:
  break;
 }

 return size;
}
