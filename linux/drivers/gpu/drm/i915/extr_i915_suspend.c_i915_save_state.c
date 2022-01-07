
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_4__ {int struct_mutex; struct pci_dev* pdev; } ;
struct TYPE_3__ {void** saveSWF3; void** saveSWF1; void** saveSWF0; void* saveMI_ARB_STATE; void* saveCACHE_MODE_0; int saveGCDGMBUS; } ;
struct drm_i915_private {TYPE_2__ drm; TYPE_1__ regfile; } ;


 int CACHE_MODE_0 ;
 int GCDGMBUS ;
 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 void* I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_MOBILE (struct drm_i915_private*) ;
 int MI_ARB_STATE ;
 int SWF0 (int) ;
 int SWF1 (int) ;
 int SWF3 (int) ;
 int i915_save_display (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;

int i915_save_state(struct drm_i915_private *dev_priv)
{
 struct pci_dev *pdev = dev_priv->drm.pdev;
 int i;

 mutex_lock(&dev_priv->drm.struct_mutex);

 i915_save_display(dev_priv);

 if (IS_GEN(dev_priv, 4))
  pci_read_config_word(pdev, GCDGMBUS,
         &dev_priv->regfile.saveGCDGMBUS);


 if (INTEL_GEN(dev_priv) < 7)
  dev_priv->regfile.saveCACHE_MODE_0 = I915_READ(CACHE_MODE_0);


 dev_priv->regfile.saveMI_ARB_STATE = I915_READ(MI_ARB_STATE);


 if (IS_GEN(dev_priv, 2) && IS_MOBILE(dev_priv)) {
  for (i = 0; i < 7; i++) {
   dev_priv->regfile.saveSWF0[i] = I915_READ(SWF0(i));
   dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
  }
  for (i = 0; i < 3; i++)
   dev_priv->regfile.saveSWF3[i] = I915_READ(SWF3(i));
 } else if (IS_GEN(dev_priv, 2)) {
  for (i = 0; i < 7; i++)
   dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
 } else if (HAS_GMCH(dev_priv)) {
  for (i = 0; i < 16; i++) {
   dev_priv->regfile.saveSWF0[i] = I915_READ(SWF0(i));
   dev_priv->regfile.saveSWF1[i] = I915_READ(SWF1(i));
  }
  for (i = 0; i < 3; i++)
   dev_priv->regfile.saveSWF3[i] = I915_READ(SWF3(i));
 }

 mutex_unlock(&dev_priv->drm.struct_mutex);

 return 0;
}
