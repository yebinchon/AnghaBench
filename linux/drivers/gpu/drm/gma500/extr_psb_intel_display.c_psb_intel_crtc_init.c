
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct psb_intel_mode_device {int dummy; } ;
struct psb_intel_crtc_state {int dummy; } ;
struct TYPE_4__ {scalar_t__ num_connectors; struct drm_connector** connectors; int * crtc; } ;
struct gma_crtc {int pipe; int plane; int active; TYPE_2__ mode_set; int base; scalar_t__ cursor_addr; struct psb_intel_mode_device* mode_dev; scalar_t__* lut_adj; int clock_funcs; void* crtc_state; } ;
struct drm_psb_private {int ** pipe_to_crtc_mapping; int ** plane_to_crtc_mapping; TYPE_1__* ops; } ;
struct drm_device {int dev; struct drm_psb_private* dev_private; } ;
struct drm_connector {int dummy; } ;
struct TYPE_3__ {int crtc_helper; int clock_funcs; int crtc_funcs; } ;


 int ARRAY_SIZE (int **) ;
 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int INTELFB_CONN_LIMIT ;
 int dev_err (int ,char*) ;
 int drm_crtc_helper_add (int *,int ) ;
 int drm_crtc_init (struct drm_device*,int *,int ) ;
 int drm_mode_crtc_set_gamma_size (int *,int) ;
 int kfree (struct gma_crtc*) ;
 void* kzalloc (int,int ) ;
 int psb_intel_cursor_init (struct drm_device*,struct gma_crtc*) ;

void psb_intel_crtc_init(struct drm_device *dev, int pipe,
       struct psb_intel_mode_device *mode_dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_crtc *gma_crtc;
 int i;



 gma_crtc = kzalloc(sizeof(struct gma_crtc) +
   (INTELFB_CONN_LIMIT * sizeof(struct drm_connector *)),
   GFP_KERNEL);
 if (gma_crtc == ((void*)0))
  return;

 gma_crtc->crtc_state =
  kzalloc(sizeof(struct psb_intel_crtc_state), GFP_KERNEL);
 if (!gma_crtc->crtc_state) {
  dev_err(dev->dev, "Crtc state error: No memory\n");
  kfree(gma_crtc);
  return;
 }


 drm_crtc_init(dev, &gma_crtc->base, dev_priv->ops->crtc_funcs);


 gma_crtc->clock_funcs = dev_priv->ops->clock_funcs;

 drm_mode_crtc_set_gamma_size(&gma_crtc->base, 256);
 gma_crtc->pipe = pipe;
 gma_crtc->plane = pipe;

 for (i = 0; i < 256; i++)
  gma_crtc->lut_adj[i] = 0;

 gma_crtc->mode_dev = mode_dev;
 gma_crtc->cursor_addr = 0;

 drm_crtc_helper_add(&gma_crtc->base,
      dev_priv->ops->crtc_helper);


 gma_crtc->mode_set.crtc = &gma_crtc->base;
 BUG_ON(pipe >= ARRAY_SIZE(dev_priv->plane_to_crtc_mapping) ||
        dev_priv->plane_to_crtc_mapping[gma_crtc->plane] != ((void*)0));
 dev_priv->plane_to_crtc_mapping[gma_crtc->plane] = &gma_crtc->base;
 dev_priv->pipe_to_crtc_mapping[gma_crtc->pipe] = &gma_crtc->base;
 gma_crtc->mode_set.connectors = (struct drm_connector **)(gma_crtc + 1);
 gma_crtc->mode_set.num_connectors = 0;
 psb_intel_cursor_init(dev, gma_crtc);


 gma_crtc->active = 1;
}
