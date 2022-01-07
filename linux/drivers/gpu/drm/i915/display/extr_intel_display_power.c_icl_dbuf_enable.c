
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enabled_slices; } ;
struct TYPE_5__ {TYPE_1__ ddb; } ;
struct TYPE_6__ {TYPE_2__ skl_hw; } ;
struct drm_i915_private {TYPE_3__ wm; } ;


 int DBUF_CTL_S1 ;
 int DBUF_CTL_S2 ;
 int DBUF_POWER_REQUEST ;
 int DBUF_POWER_STATE ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
{
 I915_WRITE(DBUF_CTL_S1, I915_READ(DBUF_CTL_S1) | DBUF_POWER_REQUEST);
 I915_WRITE(DBUF_CTL_S2, I915_READ(DBUF_CTL_S2) | DBUF_POWER_REQUEST);
 POSTING_READ(DBUF_CTL_S2);

 udelay(10);

 if (!(I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
     !(I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
  DRM_ERROR("DBuf power enable timeout\n");
 else




  dev_priv->wm.skl_hw.ddb.enabled_slices = 1;
}
