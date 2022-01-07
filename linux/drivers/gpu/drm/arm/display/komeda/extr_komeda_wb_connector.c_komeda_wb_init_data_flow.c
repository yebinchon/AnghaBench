
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* pipeline; } ;
struct komeda_layer {TYPE_5__ base; } ;
struct TYPE_7__ {int * component; } ;
struct komeda_data_flow_cfg {int rot; int pixel_blend_mode; TYPE_2__ input; int in_h; int in_w; int out_h; int out_w; } ;
struct komeda_crtc_state {int dummy; } ;
struct drm_framebuffer {int height; int width; } ;
struct drm_connector_state {TYPE_1__* writeback_job; } ;
struct TYPE_9__ {TYPE_3__* compiz; } ;
struct TYPE_8__ {int base; } ;
struct TYPE_6__ {struct drm_framebuffer* fb; } ;


 int DRM_MODE_BLEND_PIXEL_NONE ;
 int DRM_MODE_ROTATE_0 ;
 int komeda_complete_data_flow_cfg (struct komeda_layer*,struct komeda_data_flow_cfg*,struct drm_framebuffer*) ;
 int memset (struct komeda_data_flow_cfg*,int ,int) ;
 int pipeline_composition_size (struct komeda_crtc_state*,int *,int *) ;

__attribute__((used)) static int
komeda_wb_init_data_flow(struct komeda_layer *wb_layer,
    struct drm_connector_state *conn_st,
    struct komeda_crtc_state *kcrtc_st,
    struct komeda_data_flow_cfg *dflow)
{
 struct drm_framebuffer *fb = conn_st->writeback_job->fb;

 memset(dflow, 0, sizeof(*dflow));

 dflow->out_w = fb->width;
 dflow->out_h = fb->height;


 pipeline_composition_size(kcrtc_st, &dflow->in_w, &dflow->in_h);
 dflow->input.component = &wb_layer->base.pipeline->compiz->base;

 dflow->pixel_blend_mode = DRM_MODE_BLEND_PIXEL_NONE;
 dflow->rot = DRM_MODE_ROTATE_0;

 komeda_complete_data_flow_cfg(wb_layer, dflow, fb);

 return 0;
}
