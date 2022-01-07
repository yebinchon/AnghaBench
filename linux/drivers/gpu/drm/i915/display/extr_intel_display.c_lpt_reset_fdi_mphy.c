
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int FDI_MPHY_IOSFSB_RESET_CTL ;
 int FDI_MPHY_IOSFSB_RESET_STATUS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SOUTH_CHICKEN2 ;
 scalar_t__ wait_for_us (int,int) ;

__attribute__((used)) static void lpt_reset_fdi_mphy(struct drm_i915_private *dev_priv)
{
 u32 tmp;

 tmp = I915_READ(SOUTH_CHICKEN2);
 tmp |= FDI_MPHY_IOSFSB_RESET_CTL;
 I915_WRITE(SOUTH_CHICKEN2, tmp);

 if (wait_for_us(I915_READ(SOUTH_CHICKEN2) &
   FDI_MPHY_IOSFSB_RESET_STATUS, 100))
  DRM_ERROR("FDI mPHY reset assert timeout\n");

 tmp = I915_READ(SOUTH_CHICKEN2);
 tmp &= ~FDI_MPHY_IOSFSB_RESET_CTL;
 I915_WRITE(SOUTH_CHICKEN2, tmp);

 if (wait_for_us((I915_READ(SOUTH_CHICKEN2) &
    FDI_MPHY_IOSFSB_RESET_STATUS) == 0, 100))
  DRM_ERROR("FDI mPHY reset de-assert timeout\n");
}
