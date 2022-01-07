
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int PCI_DEVFN (int ,int ) ;
 int SB_CRWRDA_NP ;
 int vlv_sideband_rw (struct drm_i915_private*,int ,int ,int ,int ,int *) ;

void vlv_iosf_sb_write(struct drm_i915_private *i915,
         u8 port, u32 reg, u32 val)
{
 vlv_sideband_rw(i915, PCI_DEVFN(0, 0), port,
   SB_CRWRDA_NP, reg, &val);
}
