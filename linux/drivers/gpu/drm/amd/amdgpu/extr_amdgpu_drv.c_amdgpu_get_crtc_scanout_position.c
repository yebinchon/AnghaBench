
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int ktime_t ;


 int amdgpu_display_get_crtc_scanoutpos (struct drm_device*,unsigned int,int ,int*,int*,int *,int *,struct drm_display_mode const*) ;

__attribute__((used)) static bool
amdgpu_get_crtc_scanout_position(struct drm_device *dev, unsigned int pipe,
     bool in_vblank_irq, int *vpos, int *hpos,
     ktime_t *stime, ktime_t *etime,
     const struct drm_display_mode *mode)
{
 return amdgpu_display_get_crtc_scanoutpos(dev, pipe, 0, vpos, hpos,
        stime, etime, mode);
}
