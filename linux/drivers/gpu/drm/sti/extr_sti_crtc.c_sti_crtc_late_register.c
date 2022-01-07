
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_mixer {int dev; } ;
struct sti_compositor {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {int primary; } ;


 struct sti_compositor* dev_get_drvdata (int ) ;
 scalar_t__ drm_crtc_index (struct drm_crtc*) ;
 int sti_compositor_debugfs_init (struct sti_compositor*,int ) ;
 struct sti_mixer* to_sti_mixer (struct drm_crtc*) ;

__attribute__((used)) static int sti_crtc_late_register(struct drm_crtc *crtc)
{
 struct sti_mixer *mixer = to_sti_mixer(crtc);
 struct sti_compositor *compo = dev_get_drvdata(mixer->dev);

 if (drm_crtc_index(crtc) == 0)
  return sti_compositor_debugfs_init(compo, crtc->dev->primary);

 return 0;
}
