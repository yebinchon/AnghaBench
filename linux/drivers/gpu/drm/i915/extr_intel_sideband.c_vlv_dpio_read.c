
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int* dpio_phy_iosf_port; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPIO_DEVFN ;
 size_t DPIO_PHY (int) ;
 int SB_MRD_NP ;
 int WARN (int,char*,int ,int,int) ;
 int pipe_name (int) ;
 int vlv_sideband_rw (struct drm_i915_private*,int ,int,int ,int,int*) ;

u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
{
 int port = i915->dpio_phy_iosf_port[DPIO_PHY(pipe)];
 u32 val = 0;

 vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MRD_NP, reg, &val);





 WARN(val == 0xffffffff, "DPIO read pipe %c reg 0x%x == 0x%x\n",
      pipe_name(pipe), reg, val);

 return val;
}
