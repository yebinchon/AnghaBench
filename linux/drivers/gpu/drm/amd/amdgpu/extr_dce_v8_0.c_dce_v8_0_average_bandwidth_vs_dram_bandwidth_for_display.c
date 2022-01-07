
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce8_wm_params {int num_heads; } ;


 int dce_v8_0_average_bandwidth (struct dce8_wm_params*) ;
 int dce_v8_0_dram_bandwidth_for_display (struct dce8_wm_params*) ;

__attribute__((used)) static bool dce_v8_0_average_bandwidth_vs_dram_bandwidth_for_display(struct dce8_wm_params *wm)
{
 if (dce_v8_0_average_bandwidth(wm) <=
     (dce_v8_0_dram_bandwidth_for_display(wm) / wm->num_heads))
  return 1;
 else
  return 0;
}
