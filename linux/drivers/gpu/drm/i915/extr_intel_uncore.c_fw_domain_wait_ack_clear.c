
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_forcewake_domain {int id; } ;


 int DRM_ERROR (char*,int ) ;
 int FORCEWAKE_KERNEL ;
 int TAINT_WARN ;
 int add_taint_for_CI (int ) ;
 int intel_uncore_forcewake_domain_to_str (int ) ;
 scalar_t__ wait_ack_clear (struct intel_uncore_forcewake_domain const*,int ) ;

__attribute__((used)) static inline void
fw_domain_wait_ack_clear(const struct intel_uncore_forcewake_domain *d)
{
 if (wait_ack_clear(d, FORCEWAKE_KERNEL)) {
  DRM_ERROR("%s: timed out waiting for forcewake ack to clear.\n",
     intel_uncore_forcewake_domain_to_str(d->id));
  add_taint_for_CI(TAINT_WARN);
 }
}
