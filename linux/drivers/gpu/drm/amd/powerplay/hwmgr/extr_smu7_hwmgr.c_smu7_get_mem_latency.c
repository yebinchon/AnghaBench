
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu7_hwmgr {scalar_t__ mem_latency_high; scalar_t__ mem_latency_low; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 scalar_t__ MEM_FREQ_HIGH_LATENCY ;
 scalar_t__ MEM_FREQ_LOW_LATENCY ;
 scalar_t__ MEM_LATENCY_ERR ;

__attribute__((used)) static uint32_t smu7_get_mem_latency(struct pp_hwmgr *hwmgr, uint32_t clk)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (clk >= MEM_FREQ_LOW_LATENCY && clk < MEM_FREQ_HIGH_LATENCY)
  return data->mem_latency_high;
 else if (clk >= MEM_FREQ_HIGH_LATENCY)
  return data->mem_latency_low;
 else
  return MEM_LATENCY_ERR;
}
