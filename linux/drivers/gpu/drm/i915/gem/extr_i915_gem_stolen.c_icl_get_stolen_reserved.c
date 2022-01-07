
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_i915_private {int uncore; } ;
typedef int resource_size_t ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int GEN11_STOLEN_RESERVED_ADDR_MASK ;
 int GEN6_STOLEN_RESERVED ;




 int GEN8_STOLEN_RESERVED_SIZE_MASK ;
 int MISSING_CASE (int) ;
 int intel_uncore_read64 (int *,int ) ;

__attribute__((used)) static void icl_get_stolen_reserved(struct drm_i915_private *i915,
        resource_size_t *base,
        resource_size_t *size)
{
 u64 reg_val = intel_uncore_read64(&i915->uncore, GEN6_STOLEN_RESERVED);

 DRM_DEBUG_DRIVER("GEN6_STOLEN_RESERVED = 0x%016llx\n", reg_val);

 *base = reg_val & GEN11_STOLEN_RESERVED_ADDR_MASK;

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
