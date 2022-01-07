
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt_gtt_entry {scalar_t__ type; int val64; } ;


 scalar_t__ GEM_WARN_ON (int) ;
 int GEN8_PDE_IPS_64K ;
 scalar_t__ GTT_TYPE_PPGTT_PDE_ENTRY ;

__attribute__((used)) static bool gen8_gtt_test_ips(struct intel_gvt_gtt_entry *e)
{
 if (GEM_WARN_ON(e->type != GTT_TYPE_PPGTT_PDE_ENTRY))
  return 0;

 return !!(e->val64 & GEN8_PDE_IPS_64K);
}
