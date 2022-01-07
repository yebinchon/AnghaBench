
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int end; } ;
struct drm_i915_private {TYPE_1__ dsm; } ;
typedef int resource_size_t ;


 int CTG_STOLEN_RESERVED ;
 int DRM_DEBUG_DRIVER (char*,char*,int) ;
 int ELK_STOLEN_RESERVED ;
 int G4X_STOLEN_RESERVED_ADDR1_MASK ;
 int G4X_STOLEN_RESERVED_ADDR2_MASK ;
 int G4X_STOLEN_RESERVED_ENABLE ;
 int I915_READ (int ) ;
 int IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GM45 (struct drm_i915_private*) ;
 int WARN (int ,char*,int) ;
 int WARN_ON (int) ;

__attribute__((used)) static void g4x_get_stolen_reserved(struct drm_i915_private *dev_priv,
        resource_size_t *base,
        resource_size_t *size)
{
 u32 reg_val = I915_READ(IS_GM45(dev_priv) ?
    CTG_STOLEN_RESERVED :
    ELK_STOLEN_RESERVED);
 resource_size_t stolen_top = dev_priv->dsm.end + 1;

 DRM_DEBUG_DRIVER("%s_STOLEN_RESERVED = %08x\n",
    IS_GM45(dev_priv) ? "CTG" : "ELK", reg_val);

 if ((reg_val & G4X_STOLEN_RESERVED_ENABLE) == 0)
  return;





 WARN(IS_GEN(dev_priv, 5), "ILK stolen reserved found? 0x%08x\n",
      reg_val);

 if (!(reg_val & G4X_STOLEN_RESERVED_ADDR2_MASK))
  return;

 *base = (reg_val & G4X_STOLEN_RESERVED_ADDR2_MASK) << 16;
 WARN_ON((reg_val & G4X_STOLEN_RESERVED_ADDR1_MASK) < *base);

 *size = stolen_top - *base;
}
