
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int uncore; } ;
typedef int reg_value ;
typedef int i915_reg_t ;


 int VLV_GTLC_PW_STATUS ;
 int intel_uncore_read_notrace (int *,int ) ;
 int trace_i915_reg_rw (int,int ,int,int,int) ;
 int wait_for (int,int) ;

__attribute__((used)) static int vlv_wait_for_pw_status(struct drm_i915_private *i915,
      u32 mask, u32 val)
{
 i915_reg_t reg = VLV_GTLC_PW_STATUS;
 u32 reg_value;
 int ret;
 ret = wait_for(((reg_value =
    intel_uncore_read_notrace(&i915->uncore, reg)) & mask)
         == val, 3);


 trace_i915_reg_rw(0, reg, reg_value, sizeof(reg_value), 1);

 return ret;
}
