
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct pp_clock_levels_with_latency {int dummy; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;


 int EINVAL ;




 int vega12_get_dcefclocks (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ;
 int vega12_get_memclocks (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ;
 int vega12_get_sclks (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ;
 int vega12_get_socclocks (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ;

__attribute__((used)) static int vega12_get_clock_by_type_with_latency(struct pp_hwmgr *hwmgr,
  enum amd_pp_clock_type type,
  struct pp_clock_levels_with_latency *clocks)
{
 int ret;

 switch (type) {
 case 128:
  ret = vega12_get_sclks(hwmgr, clocks);
  break;
 case 130:
  ret = vega12_get_memclocks(hwmgr, clocks);
  break;
 case 131:
  ret = vega12_get_dcefclocks(hwmgr, clocks);
  break;
 case 129:
  ret = vega12_get_socclocks(hwmgr, clocks);
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
