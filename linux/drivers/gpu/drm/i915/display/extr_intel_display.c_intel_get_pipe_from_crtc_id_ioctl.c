
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int pipe; } ;
struct drm_i915_get_pipe_from_crtc_id {int pipe; int crtc_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int ENOENT ;
 struct drm_crtc* drm_crtc_find (struct drm_device*,struct drm_file*,int ) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file)
{
 struct drm_i915_get_pipe_from_crtc_id *pipe_from_crtc_id = data;
 struct drm_crtc *drmmode_crtc;
 struct intel_crtc *crtc;

 drmmode_crtc = drm_crtc_find(dev, file, pipe_from_crtc_id->crtc_id);
 if (!drmmode_crtc)
  return -ENOENT;

 crtc = to_intel_crtc(drmmode_crtc);
 pipe_from_crtc_id->pipe = crtc->pipe;

 return 0;
}
