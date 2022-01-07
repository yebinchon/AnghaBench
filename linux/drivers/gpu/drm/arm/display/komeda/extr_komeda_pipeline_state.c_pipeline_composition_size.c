
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;



void pipeline_composition_size(struct komeda_crtc_state *kcrtc_st,
          u16 *hsize, u16 *vsize)
{
 struct drm_display_mode *m = &kcrtc_st->base.adjusted_mode;

 if (hsize)
  *hsize = m->hdisplay;
 if (vsize)
  *vsize = m->vdisplay;
}
