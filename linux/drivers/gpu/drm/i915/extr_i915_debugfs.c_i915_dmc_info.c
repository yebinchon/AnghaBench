
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct seq_file {int private; } ;
struct intel_csr {int version; int * dmc_payload; int fw_path; } ;
struct drm_i915_private {int runtime_pm; struct intel_csr csr; } ;
typedef int intel_wakeref_t ;
struct TYPE_11__ {scalar_t__ reg; } ;
typedef TYPE_1__ i915_reg_t ;


 TYPE_1__ BXT_CSR_DC3_DC5_COUNT ;
 TYPE_1__ CSR_HTP_SKL ;
 TYPE_1__ CSR_PROGRAM (int ) ;
 TYPE_1__ CSR_SSP_BASE ;
 int CSR_VERSION_MAJOR (int ) ;
 int CSR_VERSION_MINOR (int ) ;
 int ENODEV ;
 int HAS_CSR (struct drm_i915_private*) ;
 int I915_READ (TYPE_1__) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROXTON (struct drm_i915_private*) ;
 int IS_GEN9_LP (struct drm_i915_private*) ;
 TYPE_1__ SKL_CSR_DC3_DC5_COUNT ;
 TYPE_1__ SKL_CSR_DC5_DC6_COUNT ;
 TYPE_1__ TGL_DMC_DEBUG_DC5_COUNT ;
 TYPE_1__ TGL_DMC_DEBUG_DC6_COUNT ;
 int intel_runtime_pm_get (int *) ;
 int intel_runtime_pm_put (int *,int ) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int yesno (int ) ;

__attribute__((used)) static int i915_dmc_info(struct seq_file *m, void *unused)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 intel_wakeref_t wakeref;
 struct intel_csr *csr;
 i915_reg_t dc5_reg, dc6_reg = {};

 if (!HAS_CSR(dev_priv))
  return -ENODEV;

 csr = &dev_priv->csr;

 wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);

 seq_printf(m, "fw loaded: %s\n", yesno(csr->dmc_payload != ((void*)0)));
 seq_printf(m, "path: %s\n", csr->fw_path);

 if (!csr->dmc_payload)
  goto out;

 seq_printf(m, "version: %d.%d\n", CSR_VERSION_MAJOR(csr->version),
     CSR_VERSION_MINOR(csr->version));

 if (INTEL_GEN(dev_priv) >= 12) {
  dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
  dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
 } else {
  dc5_reg = IS_BROXTON(dev_priv) ? BXT_CSR_DC3_DC5_COUNT :
       SKL_CSR_DC3_DC5_COUNT;
  if (!IS_GEN9_LP(dev_priv))
   dc6_reg = SKL_CSR_DC5_DC6_COUNT;
 }

 seq_printf(m, "DC3 -> DC5 count: %d\n", I915_READ(dc5_reg));
 if (dc6_reg.reg)
  seq_printf(m, "DC5 -> DC6 count: %d\n", I915_READ(dc6_reg));

out:
 seq_printf(m, "program base: 0x%08x\n", I915_READ(CSR_PROGRAM(0)));
 seq_printf(m, "ssp base: 0x%08x\n", I915_READ(CSR_SSP_BASE));
 seq_printf(m, "htp: 0x%08x\n", I915_READ(CSR_HTP_SKL));

 intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);

 return 0;
}
