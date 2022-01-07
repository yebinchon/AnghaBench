
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int IOSF_PORT_PUNIT ;
 int PCI_DEVFN (int ,int ) ;
 int SB_CRRDDA_NP ;
 int vlv_sideband_rw (struct drm_i915_private*,int ,int ,int ,int ,int *) ;

u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
{
 u32 val = 0;

 vlv_sideband_rw(i915, PCI_DEVFN(0, 0), IOSF_PORT_PUNIT,
   SB_CRRDDA_NP, addr, &val);

 return val;
}
