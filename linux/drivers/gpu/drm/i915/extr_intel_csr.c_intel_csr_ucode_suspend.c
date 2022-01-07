
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmc_payload; int work; } ;
struct drm_i915_private {TYPE_1__ csr; } ;


 int HAS_CSR (struct drm_i915_private*) ;
 int flush_work (int *) ;
 int intel_csr_runtime_pm_put (struct drm_i915_private*) ;

void intel_csr_ucode_suspend(struct drm_i915_private *dev_priv)
{
 if (!HAS_CSR(dev_priv))
  return;

 flush_work(&dev_priv->csr.work);


 if (!dev_priv->csr.dmc_payload)
  intel_csr_runtime_pm_put(dev_priv);
}
