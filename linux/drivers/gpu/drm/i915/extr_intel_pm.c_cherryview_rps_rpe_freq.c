
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int PUNIT_GPU_DUTYCYCLE_REG ;
 int PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK ;
 int PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;

__attribute__((used)) static int cherryview_rps_rpe_freq(struct drm_i915_private *dev_priv)
{
 u32 val, rpe;

 val = vlv_punit_read(dev_priv, PUNIT_GPU_DUTYCYCLE_REG);
 rpe = (val >> PUNIT_GPU_DUTYCYCLE_RPE_FREQ_SHIFT) & PUNIT_GPU_DUTYCYCLE_RPE_FREQ_MASK;

 return rpe;
}
