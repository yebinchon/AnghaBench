
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;
typedef enum phm_platform_caps { ____Placeholder_phm_platform_caps } phm_platform_caps ;


 int phm_cap_set (int ,int) ;
 int phm_cap_unset (int ,int) ;

__attribute__((used)) static void set_hw_cap(struct pp_hwmgr *hwmgr, bool setIt, enum phm_platform_caps cap)
{
 if (setIt)
  phm_cap_set(hwmgr->platform_descriptor.platformCaps, cap);
 else
  phm_cap_unset(hwmgr->platform_descriptor.platformCaps, cap);
}
