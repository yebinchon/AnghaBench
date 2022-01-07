
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct komeda_scaler {int hsize; } ;
struct TYPE_5__ {TYPE_1__* pipeline; } ;
struct komeda_layer {TYPE_2__ base; } ;
struct komeda_data_flow_cfg {int in_w; int in_h; int total_in_w; int total_in_h; int total_out_w; int out_w; int en_scaling; int out_h; int en_img_enhancement; int en_split; int is_yuv; int rot; int pixel_blend_mode; } ;
struct drm_framebuffer {TYPE_3__* format; } ;
struct TYPE_6__ {int is_yuv; int has_alpha; } ;
struct TYPE_4__ {struct komeda_scaler** scalers; } ;


 int DRM_MODE_BLEND_PIXEL_NONE ;
 scalar_t__ drm_rotation_90_or_270 (int ) ;
 int in_range (int *,int) ;
 int swap (int,int) ;

void komeda_complete_data_flow_cfg(struct komeda_layer *layer,
       struct komeda_data_flow_cfg *dflow,
       struct drm_framebuffer *fb)
{
 struct komeda_scaler *scaler = layer->base.pipeline->scalers[0];
 u32 w = dflow->in_w;
 u32 h = dflow->in_h;

 dflow->total_in_w = dflow->in_w;
 dflow->total_in_h = dflow->in_h;
 dflow->total_out_w = dflow->out_w;


 if (!fb->format->has_alpha)
  dflow->pixel_blend_mode = DRM_MODE_BLEND_PIXEL_NONE;

 if (drm_rotation_90_or_270(dflow->rot))
  swap(w, h);

 dflow->en_scaling = (w != dflow->out_w) || (h != dflow->out_h);
 dflow->is_yuv = fb->format->is_yuv;


 dflow->en_img_enhancement = dflow->out_w >= 2 * w ||
        dflow->out_h >= 2 * h;




 if (dflow->en_scaling && scaler)
  dflow->en_split = !in_range(&scaler->hsize, dflow->in_w) ||
      !in_range(&scaler->hsize, dflow->out_w);
}
