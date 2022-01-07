
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {scalar_t__ vsync_len; scalar_t__ hsync_len; } ;
struct ipu_crtc {int di; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int drm_display_mode_from_videomode (struct videomode*,struct drm_display_mode*) ;
 int drm_display_mode_to_videomode (struct drm_display_mode*,struct videomode*) ;
 int ipu_di_adjust_videomode (int ,struct videomode*) ;
 struct ipu_crtc* to_ipu_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool ipu_crtc_mode_fixup(struct drm_crtc *crtc,
      const struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode)
{
 struct ipu_crtc *ipu_crtc = to_ipu_crtc(crtc);
 struct videomode vm;
 int ret;

 drm_display_mode_to_videomode(adjusted_mode, &vm);

 ret = ipu_di_adjust_videomode(ipu_crtc->di, &vm);
 if (ret)
  return 0;

 if ((vm.vsync_len == 0) || (vm.hsync_len == 0))
  return 0;

 drm_display_mode_from_videomode(&vm, adjusted_mode);

 return 1;
}
