
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum i9xx_plane_id { ____Placeholder_i9xx_plane_id } i9xx_plane_id ;


 int DRM_DEBUG_KMS (char*,int,int ,int) ;
 int DSPARB ;
 int I915_READ (int ) ;
 int plane_name (int) ;

__attribute__((used)) static int i845_get_fifo_size(struct drm_i915_private *dev_priv,
         enum i9xx_plane_id i9xx_plane)
{
 u32 dsparb = I915_READ(DSPARB);
 int size;

 size = dsparb & 0x7f;
 size >>= 2;

 DRM_DEBUG_KMS("FIFO size - (0x%08x) %c: %d\n",
        dsparb, plane_name(i9xx_plane), size);

 return size;
}
