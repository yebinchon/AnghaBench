
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxsr_latency {int is_desktop; int is_ddr3; int fsb_freq; int mem_freq; } ;


 int ARRAY_SIZE (struct cxsr_latency*) ;
 int DRM_DEBUG_KMS (char*) ;
 struct cxsr_latency* cxsr_latency_table ;

__attribute__((used)) static const struct cxsr_latency *intel_get_cxsr_latency(bool is_desktop,
        bool is_ddr3,
        int fsb,
        int mem)
{
 const struct cxsr_latency *latency;
 int i;

 if (fsb == 0 || mem == 0)
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
  latency = &cxsr_latency_table[i];
  if (is_desktop == latency->is_desktop &&
      is_ddr3 == latency->is_ddr3 &&
      fsb == latency->fsb_freq && mem == latency->mem_freq)
   return latency;
 }

 DRM_DEBUG_KMS("Unknown FSB/MEM found, disable CxSR\n");

 return ((void*)0);
}
