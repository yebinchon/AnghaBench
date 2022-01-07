
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_dc {int base; scalar_t__ syncpt; TYPE_1__* soc; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int has_nvdisplay; } ;


 int drm_crtc_vblank_count (int *) ;
 int host1x_syncpt_read (scalar_t__) ;
 struct tegra_dc* to_tegra_dc (struct drm_crtc*) ;

__attribute__((used)) static u32 tegra_dc_get_vblank_counter(struct drm_crtc *crtc)
{
 struct tegra_dc *dc = to_tegra_dc(crtc);


 if (dc->syncpt && !dc->soc->has_nvdisplay)
  return host1x_syncpt_read(dc->syncpt);


 return (u32)drm_crtc_vblank_count(&dc->base);
}
