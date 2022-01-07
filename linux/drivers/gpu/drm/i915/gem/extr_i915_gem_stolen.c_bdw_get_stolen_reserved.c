
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int end; } ;
struct drm_i915_private {TYPE_1__ dsm; } ;
typedef int resource_size_t ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int GEN6_STOLEN_RESERVED ;
 int GEN6_STOLEN_RESERVED_ADDR_MASK ;
 int GEN6_STOLEN_RESERVED_ENABLE ;
 int I915_READ (int ) ;

__attribute__((used)) static void bdw_get_stolen_reserved(struct drm_i915_private *dev_priv,
        resource_size_t *base,
        resource_size_t *size)
{
 u32 reg_val = I915_READ(GEN6_STOLEN_RESERVED);
 resource_size_t stolen_top = dev_priv->dsm.end + 1;

 DRM_DEBUG_DRIVER("GEN6_STOLEN_RESERVED = %08x\n", reg_val);

 if (!(reg_val & GEN6_STOLEN_RESERVED_ENABLE))
  return;

 if (!(reg_val & GEN6_STOLEN_RESERVED_ADDR_MASK))
  return;

 *base = reg_val & GEN6_STOLEN_RESERVED_ADDR_MASK;
 *size = stolen_top - *base;
}
