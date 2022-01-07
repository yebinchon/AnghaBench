
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int CHICKEN_MISC_2 ;
 int CL_POWER_DOWN_ENABLE ;
 int CNL_COMP_PWR_DOWN ;
 int CNL_PORT_CL1CM_DW5 ;
 int CNL_PORT_COMP_DW0 ;
 int COMP_INIT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PHY_A ;
 int cnl_set_procmon_ref_values (struct drm_i915_private*,int ) ;

__attribute__((used)) static void cnl_combo_phys_init(struct drm_i915_private *dev_priv)
{
 u32 val;

 val = I915_READ(CHICKEN_MISC_2);
 val &= ~CNL_COMP_PWR_DOWN;
 I915_WRITE(CHICKEN_MISC_2, val);


 cnl_set_procmon_ref_values(dev_priv, PHY_A);

 val = I915_READ(CNL_PORT_COMP_DW0);
 val |= COMP_INIT;
 I915_WRITE(CNL_PORT_COMP_DW0, val);

 val = I915_READ(CNL_PORT_CL1CM_DW5);
 val |= CL_POWER_DOWN_ENABLE;
 I915_WRITE(CNL_PORT_CL1CM_DW5, val);
}
