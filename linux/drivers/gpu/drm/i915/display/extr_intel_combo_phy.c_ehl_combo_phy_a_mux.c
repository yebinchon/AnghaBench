
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* ddi_port_info; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct TYPE_3__ {int * child; } ;


 int DRM_ERROR (char*) ;
 int ICL_PHY_MISC_MUX_DDID ;
 size_t PORT_A ;
 size_t PORT_D ;
 int intel_bios_is_dsi_present (struct drm_i915_private*,int *) ;

__attribute__((used)) static u32 ehl_combo_phy_a_mux(struct drm_i915_private *i915, u32 val)
{
 bool ddi_a_present = i915->vbt.ddi_port_info[PORT_A].child != ((void*)0);
 bool ddi_d_present = i915->vbt.ddi_port_info[PORT_D].child != ((void*)0);
 bool dsi_present = intel_bios_is_dsi_present(i915, ((void*)0));







 if (ddi_d_present && !ddi_a_present && !dsi_present)
  return val | ICL_PHY_MISC_MUX_DDID;






 if (ddi_d_present)
  DRM_ERROR("VBT claims to have both internal and external displays on PHY A.  Configuring for internal.\n");

 return val & ~ICL_PHY_MISC_MUX_DDID;
}
