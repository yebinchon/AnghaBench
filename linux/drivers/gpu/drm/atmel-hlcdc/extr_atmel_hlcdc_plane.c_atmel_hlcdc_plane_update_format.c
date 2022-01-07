
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int rotation; TYPE_2__* fb; } ;
struct atmel_hlcdc_plane_state {TYPE_3__ base; } ;
struct atmel_hlcdc_plane {int layer; } ;
struct TYPE_5__ {TYPE_1__* format; } ;
struct TYPE_4__ {scalar_t__ format; } ;


 int ATMEL_HLCDC_LAYER_FORMAT_CFG ;
 int ATMEL_HLCDC_YUV422ROT ;
 scalar_t__ DRM_FORMAT_NV61 ;
 scalar_t__ DRM_FORMAT_YUV422 ;
 int atmel_hlcdc_format_to_plane_mode (scalar_t__,int *) ;
 int atmel_hlcdc_layer_write_cfg (int *,int ,int ) ;
 scalar_t__ drm_rotation_90_or_270 (int ) ;

__attribute__((used)) static void atmel_hlcdc_plane_update_format(struct atmel_hlcdc_plane *plane,
     struct atmel_hlcdc_plane_state *state)
{
 u32 cfg;
 int ret;

 ret = atmel_hlcdc_format_to_plane_mode(state->base.fb->format->format,
            &cfg);
 if (ret)
  return;

 if ((state->base.fb->format->format == DRM_FORMAT_YUV422 ||
      state->base.fb->format->format == DRM_FORMAT_NV61) &&
     drm_rotation_90_or_270(state->base.rotation))
  cfg |= ATMEL_HLCDC_YUV422ROT;

 atmel_hlcdc_layer_write_cfg(&plane->layer,
        ATMEL_HLCDC_LAYER_FORMAT_CFG, cfg);
}
