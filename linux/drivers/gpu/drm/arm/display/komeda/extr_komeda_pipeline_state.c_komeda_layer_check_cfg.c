
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct komeda_layer {int vsize_in; int hsize_in; TYPE_1__ base; int layer_type; } ;
struct komeda_fb {int dummy; } ;
struct komeda_data_flow_cfg {int in_h; int in_w; int in_y; int in_x; int out_h; int out_w; int out_y; int out_x; int rot; } ;


 int DRM_DEBUG_ATOMIC (char*,int ) ;
 int EINVAL ;
 scalar_t__ KOMEDA_COMPONENT_WB_LAYER ;
 int in_range (int *,int ) ;
 scalar_t__ komeda_fb_check_src_coords (struct komeda_fb*,int ,int ,int ,int ) ;
 int komeda_fb_is_layer_supported (struct komeda_fb*,int ,int ) ;

__attribute__((used)) static int
komeda_layer_check_cfg(struct komeda_layer *layer,
         struct komeda_fb *kfb,
         struct komeda_data_flow_cfg *dflow)
{
 u32 src_x, src_y, src_w, src_h;

 if (!komeda_fb_is_layer_supported(kfb, layer->layer_type, dflow->rot))
  return -EINVAL;

 if (layer->base.id == KOMEDA_COMPONENT_WB_LAYER) {
  src_x = dflow->out_x;
  src_y = dflow->out_y;
  src_w = dflow->out_w;
  src_h = dflow->out_h;
 } else {
  src_x = dflow->in_x;
  src_y = dflow->in_y;
  src_w = dflow->in_w;
  src_h = dflow->in_h;
 }

 if (komeda_fb_check_src_coords(kfb, src_x, src_y, src_w, src_h))
  return -EINVAL;

 if (!in_range(&layer->hsize_in, src_w)) {
  DRM_DEBUG_ATOMIC("invalidate src_w %d.\n", src_w);
  return -EINVAL;
 }

 if (!in_range(&layer->vsize_in, src_h)) {
  DRM_DEBUG_ATOMIC("invalidate src_h %d.\n", src_h);
  return -EINVAL;
 }

 return 0;
}
