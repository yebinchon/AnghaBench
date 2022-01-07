
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct shmob_drm_format_info {int dummy; } ;
struct shmob_drm_device {int dev; } ;
struct shmob_drm_crtc {int line_size; struct shmob_drm_format_info const* format; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {TYPE_4__* primary; TYPE_1__* dev; } ;
struct TYPE_8__ {TYPE_3__* fb; } ;
struct TYPE_7__ {int * pitches; TYPE_2__* format; } ;
struct TYPE_6__ {int format; } ;
struct TYPE_5__ {struct shmob_drm_device* dev_private; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ) ;
 int shmob_drm_crtc_compute_base (struct shmob_drm_crtc*,int,int) ;
 struct shmob_drm_format_info* shmob_drm_format_info (int ) ;
 struct shmob_drm_crtc* to_shmob_crtc (struct drm_crtc*) ;

__attribute__((used)) static int shmob_drm_crtc_mode_set(struct drm_crtc *crtc,
       struct drm_display_mode *mode,
       struct drm_display_mode *adjusted_mode,
       int x, int y,
       struct drm_framebuffer *old_fb)
{
 struct shmob_drm_crtc *scrtc = to_shmob_crtc(crtc);
 struct shmob_drm_device *sdev = crtc->dev->dev_private;
 const struct shmob_drm_format_info *format;

 format = shmob_drm_format_info(crtc->primary->fb->format->format);
 if (format == ((void*)0)) {
  dev_dbg(sdev->dev, "mode_set: unsupported format %08x\n",
   crtc->primary->fb->format->format);
  return -EINVAL;
 }

 scrtc->format = format;
 scrtc->line_size = crtc->primary->fb->pitches[0];

 shmob_drm_crtc_compute_base(scrtc, x, y);

 return 0;
}
