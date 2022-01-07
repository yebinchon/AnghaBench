
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DPIO_DEVFN ;
 int IOSF_PORT_FLISDSI ;
 int SB_CRRDDA_NP ;
 int vlv_sideband_rw (struct drm_i915_private*,int ,int ,int ,int ,int *) ;

u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
{
 u32 val = 0;

 vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRRDDA_NP,
   reg, &val);
 return val;
}
