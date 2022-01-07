
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmc_payload; int wakeref; } ;
struct drm_i915_private {TYPE_1__ csr; } ;


 int HAS_CSR (struct drm_i915_private*) ;
 int WARN_ON (int ) ;
 int intel_csr_ucode_suspend (struct drm_i915_private*) ;
 int kfree (int ) ;

void intel_csr_ucode_fini(struct drm_i915_private *dev_priv)
{
 if (!HAS_CSR(dev_priv))
  return;

 intel_csr_ucode_suspend(dev_priv);
 WARN_ON(dev_priv->csr.wakeref);

 kfree(dev_priv->csr.dmc_payload);
}
