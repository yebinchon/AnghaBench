
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;


 int DBUF_POWER_REQUEST ;
 int DBUF_POWER_STATE ;
 int DRM_ERROR (char*,char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static inline
bool intel_dbuf_slice_set(struct drm_i915_private *dev_priv,
     i915_reg_t reg, bool enable)
{
 u32 val, status;

 val = I915_READ(reg);
 val = enable ? (val | DBUF_POWER_REQUEST) : (val & ~DBUF_POWER_REQUEST);
 I915_WRITE(reg, val);
 POSTING_READ(reg);
 udelay(10);

 status = I915_READ(reg) & DBUF_POWER_STATE;
 if ((enable && !status) || (!enable && status)) {
  DRM_ERROR("DBus power %s timeout!\n",
     enable ? "enable" : "disable");
  return 0;
 }
 return 1;
}
