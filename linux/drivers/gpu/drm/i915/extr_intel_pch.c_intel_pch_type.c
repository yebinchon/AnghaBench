
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum intel_pch { ____Placeholder_intel_pch } intel_pch ;


 int DRM_DEBUG_KMS (char*) ;
 int IS_BDW_ULT (struct drm_i915_private const*) ;
 int IS_BROADWELL (struct drm_i915_private const*) ;
 int IS_CANNONLAKE (struct drm_i915_private const*) ;
 int IS_COFFEELAKE (struct drm_i915_private const*) ;
 int IS_ELKHARTLAKE (struct drm_i915_private const*) ;
 int IS_GEN (struct drm_i915_private const*,int) ;
 int IS_HASWELL (struct drm_i915_private const*) ;
 int IS_HSW_ULT (struct drm_i915_private const*) ;
 int IS_ICELAKE (struct drm_i915_private const*) ;
 int IS_IVYBRIDGE (struct drm_i915_private const*) ;
 int IS_KABYLAKE (struct drm_i915_private const*) ;
 int IS_SKYLAKE (struct drm_i915_private const*) ;
 int IS_TIGERLAKE (struct drm_i915_private const*) ;
 int PCH_CNP ;
 int PCH_CPT ;
 int PCH_IBX ;
 int PCH_ICP ;
 int PCH_LPT ;
 int PCH_MCC ;
 int PCH_NONE ;
 int PCH_SPT ;
 int PCH_TGP ;
 int WARN_ON (int) ;

__attribute__((used)) static enum intel_pch
intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
{
 switch (id) {
 case 140:
  DRM_DEBUG_KMS("Found Ibex Peak PCH\n");
  WARN_ON(!IS_GEN(dev_priv, 5));
  return PCH_IBX;
 case 141:
  DRM_DEBUG_KMS("Found CougarPoint PCH\n");
  WARN_ON(!IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));
  return PCH_CPT;
 case 133:
  DRM_DEBUG_KMS("Found PantherPoint PCH\n");
  WARN_ON(!IS_GEN(dev_priv, 6) && !IS_IVYBRIDGE(dev_priv));

  return PCH_CPT;
 case 137:
  DRM_DEBUG_KMS("Found LynxPoint PCH\n");
  WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
  WARN_ON(IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));
  return PCH_LPT;
 case 136:
  DRM_DEBUG_KMS("Found LynxPoint LP PCH\n");
  WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
  WARN_ON(!IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));
  return PCH_LPT;
 case 129:
  DRM_DEBUG_KMS("Found WildcatPoint PCH\n");
  WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
  WARN_ON(IS_HSW_ULT(dev_priv) || IS_BDW_ULT(dev_priv));

  return PCH_LPT;
 case 128:
  DRM_DEBUG_KMS("Found WildcatPoint LP PCH\n");
  WARN_ON(!IS_HASWELL(dev_priv) && !IS_BROADWELL(dev_priv));
  WARN_ON(!IS_HSW_ULT(dev_priv) && !IS_BDW_ULT(dev_priv));

  return PCH_LPT;
 case 132:
  DRM_DEBUG_KMS("Found SunrisePoint PCH\n");
  WARN_ON(!IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv));
  return PCH_SPT;
 case 131:
  DRM_DEBUG_KMS("Found SunrisePoint LP PCH\n");
  WARN_ON(!IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv));
  return PCH_SPT;
 case 138:
  DRM_DEBUG_KMS("Found Kaby Lake PCH (KBP)\n");
  WARN_ON(!IS_SKYLAKE(dev_priv) && !IS_KABYLAKE(dev_priv) &&
   !IS_COFFEELAKE(dev_priv));

  return PCH_SPT;
 case 143:
  DRM_DEBUG_KMS("Found Cannon Lake PCH (CNP)\n");
  WARN_ON(!IS_CANNONLAKE(dev_priv) && !IS_COFFEELAKE(dev_priv));
  return PCH_CNP;
 case 142:
  DRM_DEBUG_KMS("Found Cannon Lake LP PCH (CNP-LP)\n");
  WARN_ON(!IS_CANNONLAKE(dev_priv) && !IS_COFFEELAKE(dev_priv));
  return PCH_CNP;
 case 144:
 case 145:
  DRM_DEBUG_KMS("Found Comet Lake PCH (CMP)\n");
  WARN_ON(!IS_COFFEELAKE(dev_priv));

  return PCH_CNP;
 case 139:
  DRM_DEBUG_KMS("Found Ice Lake PCH\n");
  WARN_ON(!IS_ICELAKE(dev_priv));
  return PCH_ICP;
 case 134:
 case 135:
  DRM_DEBUG_KMS("Found Mule Creek Canyon PCH\n");
  WARN_ON(!IS_ELKHARTLAKE(dev_priv));
  return PCH_MCC;
 case 130:
  DRM_DEBUG_KMS("Found Tiger Lake LP PCH\n");
  WARN_ON(!IS_TIGERLAKE(dev_priv));
  return PCH_TGP;
 default:
  return PCH_NONE;
 }
}
