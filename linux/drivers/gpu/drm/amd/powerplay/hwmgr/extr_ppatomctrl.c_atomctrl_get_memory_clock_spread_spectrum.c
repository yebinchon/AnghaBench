
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;
typedef int pp_atomctrl_internal_ss_info ;


 int ASIC_INTERNAL_MEMORY_SS ;
 int asic_internal_ss_get_ss_asignment (struct pp_hwmgr*,int ,int const,int *) ;

int atomctrl_get_memory_clock_spread_spectrum(
  struct pp_hwmgr *hwmgr,
  const uint32_t memory_clock,
  pp_atomctrl_internal_ss_info *ssInfo)
{
 return asic_internal_ss_get_ss_asignment(hwmgr,
   ASIC_INTERNAL_MEMORY_SS, memory_clock, ssInfo);
}
