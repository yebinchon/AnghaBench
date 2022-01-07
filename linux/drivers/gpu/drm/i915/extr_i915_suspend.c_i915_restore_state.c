
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int struct_mutex; struct pci_dev* pdev; } ;
struct TYPE_3__ {int saveCACHE_MODE_0; int saveMI_ARB_STATE; int* saveSWF0; int* saveSWF1; int* saveSWF3; int saveGCDGMBUS; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__ regfile; } ;


 int CACHE_MODE_0 ;
 int GCDGMBUS ;
 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_MOBILE (struct drm_i915_private*) ;
 int MI_ARB_STATE ;
 int SWF0 (int) ;
 int SWF1 (int) ;
 int SWF3 (int) ;
 int i915_restore_display (struct drm_i915_private*) ;
 int intel_gmbus_reset (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

int i915_restore_state(struct drm_i915_private *dev_priv)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 int i;

 mutex_lock(&dev_priv->drm.struct_mutex);

 if (IS_GEN(dev_priv, 4))
  pci_write_config_word(pdev, GCDGMBUS,
          dev_priv->regfile.saveGCDGMBUS);
 i915_restore_display(dev_priv);


 if (INTEL_GEN(dev_priv) < 7)
  I915_WRITE(CACHE_MODE_0, dev_priv->regfile.saveCACHE_MODE_0 |
      0xffff0000);


 I915_WRITE(MI_ARB_STATE, dev_priv->regfile.saveMI_ARB_STATE | 0xffff0000);


 if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
  for (i = 0; i < 7; i++) {
   I915_WRITE(SWF0(i), dev_priv->regfile.saveSWF0[i]);
   I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
  }
  for (i = 0; i < 3; i++)
   I915_WRITE(SWF3(i), dev_priv->regfile.saveSWF3[i]);
 } else if (IS_GEN(dev_priv, 2)) {
  for (i = 0; i < 7; i++)
   I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
 } else if (HAS_GMCH(dev_priv)) {
  for (i = 0; i < 16; i++) {
   I915_WRITE(SWF0(i), dev_priv->regfile.saveSWF0[i]);
   I915_WRITE(SWF1(i), dev_priv->regfile.saveSWF1[i]);
  }
  for (i = 0; i < 3; i++)
   I915_WRITE(SWF3(i), dev_priv->regfile.saveSWF3[i]);
 }

 mutex_unlock(&dev_priv->drm.struct_mutex);

 intel_gmbus_reset(dev_priv);

 return 0;
}
