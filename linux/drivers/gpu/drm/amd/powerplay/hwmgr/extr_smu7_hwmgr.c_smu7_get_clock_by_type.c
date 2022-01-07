
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct amd_pp_clocks {int dummy; } ;
typedef enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;


 int EINVAL ;


 int smu7_get_mclks (struct pp_hwmgr*,struct amd_pp_clocks*) ;
 int smu7_get_sclks (struct pp_hwmgr*,struct amd_pp_clocks*) ;

__attribute__((used)) static int smu7_get_clock_by_type(struct pp_hwmgr *hwmgr, enum amd_pp_clock_type type,
      struct amd_pp_clocks *clocks)
{
 switch (type) {
 case 128:
  smu7_get_sclks(hwmgr, clocks);
  break;
 case 129:
  smu7_get_mclks(hwmgr, clocks);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
