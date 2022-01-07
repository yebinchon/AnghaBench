
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int private_flags; } ;


 int INTEL_MODE_PIXEL_MULTIPLIER_MASK ;
 int INTEL_MODE_PIXEL_MULTIPLIER_SHIFT ;

__attribute__((used)) static inline int
psb_intel_mode_get_pixel_multiplier(const struct drm_display_mode *mode)
{
 return (mode->private_flags & INTEL_MODE_PIXEL_MULTIPLIER_MASK)
        >> INTEL_MODE_PIXEL_MULTIPLIER_SHIFT;
}
