
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int resource_size_t ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int GEN6_STOLEN_RESERVED ;
 int GEN6_STOLEN_RESERVED_ADDR_MASK ;
 int GEN6_STOLEN_RESERVED_ENABLE ;




 int GEN8_STOLEN_RESERVED_SIZE_MASK ;
 int I915_READ (int ) ;
 int MISSING_CASE (int) ;

__attribute__((used)) static void chv_get_stolen_reserved(struct drm_i915_private *dev_priv,
        resource_size_t *base,
        resource_size_t *size)
{
 u32 reg_val = I915_READ(GEN6_STOLEN_RESERVED);

 DRM_DEBUG_DRIVER("GEN6_STOLEN_RESERVED = %08x\n", reg_val);

 if (!(reg_val & GEN6_STOLEN_RESERVED_ENABLE))
  return;

 *base = reg_val & GEN6_STOLEN_RESERVED_ADDR_MASK;

 switch (reg_val & GEN8_STOLEN_RESERVED_SIZE_MASK) {
 case 131:
  *size = 1024 * 1024;
  break;
 case 130:
  *size = 2 * 1024 * 1024;
  break;
 case 129:
  *size = 4 * 1024 * 1024;
  break;
 case 128:
  *size = 8 * 1024 * 1024;
  break;
 default:
  *size = 8 * 1024 * 1024;
  MISSING_CASE(reg_val & GEN8_STOLEN_RESERVED_SIZE_MASK);
 }
}
