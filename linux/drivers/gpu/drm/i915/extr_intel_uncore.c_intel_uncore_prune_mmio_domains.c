
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int fw_domains; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;
typedef enum forcewake_domain_id { ____Placeholder_forcewake_domain_id } forcewake_domain_id ;


 int BIT (int) ;
 int FW_DOMAIN_ID_MEDIA_VDBOX0 ;
 int FW_DOMAIN_ID_MEDIA_VEBOX0 ;
 scalar_t__ HAS_ENGINE (struct drm_i915_private*,int ) ;
 int I915_MAX_VCS ;
 int I915_MAX_VECS ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int _VCS (int) ;
 int _VECS (int) ;
 int fw_domain_fini (struct intel_uncore*,int) ;
 int intel_uncore_has_forcewake (struct intel_uncore*) ;

void intel_uncore_prune_mmio_domains(struct intel_uncore *uncore)
{
 struct drm_i915_private *i915 = uncore->i915;
 enum forcewake_domains fw_domains = uncore->fw_domains;
 enum forcewake_domain_id domain_id;
 int i;

 if (!intel_uncore_has_forcewake(uncore) || INTEL_GEN(i915) < 11)
  return;

 for (i = 0; i < I915_MAX_VCS; i++) {
  domain_id = FW_DOMAIN_ID_MEDIA_VDBOX0 + i;

  if (HAS_ENGINE(i915, _VCS(i)))
   continue;

  if (fw_domains & BIT(domain_id))
   fw_domain_fini(uncore, domain_id);
 }

 for (i = 0; i < I915_MAX_VECS; i++) {
  domain_id = FW_DOMAIN_ID_MEDIA_VEBOX0 + i;

  if (HAS_ENGINE(i915, _VECS(i)))
   continue;

  if (fw_domains & BIT(domain_id))
   fw_domain_fini(uncore, domain_id);
 }
}
