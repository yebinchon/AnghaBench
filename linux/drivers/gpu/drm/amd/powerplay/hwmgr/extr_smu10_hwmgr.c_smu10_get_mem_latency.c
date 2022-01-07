
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pp_hwmgr {int dummy; } ;


 scalar_t__ MEM_FREQ_HIGH_LATENCY ;
 scalar_t__ MEM_FREQ_LOW_LATENCY ;
 scalar_t__ MEM_LATENCY_ERR ;
 scalar_t__ MEM_LATENCY_HIGH ;
 scalar_t__ MEM_LATENCY_LOW ;

__attribute__((used)) static uint32_t smu10_get_mem_latency(struct pp_hwmgr *hwmgr,
  uint32_t clock)
{
 if (clock >= MEM_FREQ_LOW_LATENCY &&
   clock < MEM_FREQ_HIGH_LATENCY)
  return MEM_LATENCY_HIGH;
 else if (clock >= MEM_FREQ_HIGH_LATENCY)
  return MEM_LATENCY_LOW;
 else
  return MEM_LATENCY_ERR;
}
