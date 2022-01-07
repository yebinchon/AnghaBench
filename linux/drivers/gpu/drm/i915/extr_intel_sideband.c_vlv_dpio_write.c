
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int* dpio_phy_iosf_port; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPIO_DEVFN ;
 size_t DPIO_PHY (int) ;
 int SB_MWR_NP ;
 int vlv_sideband_rw (struct drm_i915_private*,int ,int,int ,int,int *) ;

void vlv_dpio_write(struct drm_i915_private *i915,
      enum pipe pipe, int reg, u32 val)
{
 int port = i915->dpio_phy_iosf_port[DPIO_PHY(pipe)];

 vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MWR_NP, reg, &val);
}
