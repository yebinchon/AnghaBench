
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_opregion {int swsci_gbda_sub_functions; int swsci_sbcb_sub_functions; } ;
struct drm_i915_private {struct intel_opregion opregion; } ;


 int DRM_DEBUG_DRIVER (char*,int,int) ;
 int SWSCI_GBDA_REQUESTED_CALLBACKS ;
 int SWSCI_GBDA_SUPPORTED_CALLS ;
 int SWSCI_SBCB_SUPPORTED_CALLBACKS ;
 scalar_t__ swsci (struct drm_i915_private*,int ,int ,int*) ;

__attribute__((used)) static void swsci_setup(struct drm_i915_private *dev_priv)
{
 struct intel_opregion *opregion = &dev_priv->opregion;
 bool requested_callbacks = 0;
 u32 tmp;


 opregion->swsci_gbda_sub_functions = 1;
 opregion->swsci_sbcb_sub_functions = 1;


 if (swsci(dev_priv, SWSCI_GBDA_SUPPORTED_CALLS, 0, &tmp) == 0) {

  tmp <<= 1;
  opregion->swsci_gbda_sub_functions |= tmp;
 }






 if (swsci(dev_priv, SWSCI_GBDA_REQUESTED_CALLBACKS, 0, &tmp) == 0) {

  opregion->swsci_sbcb_sub_functions |= tmp;
  requested_callbacks = 1;
 }






 if (swsci(dev_priv, SWSCI_SBCB_SUPPORTED_CALLBACKS, 0, &tmp) == 0) {

  u32 low = tmp & 0x7ff;
  u32 high = tmp & ~0xfff;
  tmp = (high << 4) | (low << 1) | 1;


  if (requested_callbacks) {
   u32 req = opregion->swsci_sbcb_sub_functions;
   if ((req & tmp) != req)
    DRM_DEBUG_DRIVER("SWSCI BIOS requested (%08x) SBCB callbacks that are not supported (%08x)\n", req, tmp);


  } else {
   opregion->swsci_sbcb_sub_functions |= tmp;
  }
 }

 DRM_DEBUG_DRIVER("SWSCI GBDA callbacks %08x, SBCB callbacks %08x\n",
    opregion->swsci_gbda_sub_functions,
    opregion->swsci_sbcb_sub_functions);
}
