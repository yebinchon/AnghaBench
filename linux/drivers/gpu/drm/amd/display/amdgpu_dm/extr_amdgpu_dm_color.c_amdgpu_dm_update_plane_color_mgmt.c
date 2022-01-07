
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct drm_color_lut {int dummy; } ;
struct TYPE_3__ {int degamma_lut; } ;
struct dm_crtc_state {scalar_t__ cm_is_degamma_srgb; TYPE_1__ base; scalar_t__ cm_has_degamma; } ;
struct dc_plane_state {TYPE_2__* in_transfer_func; } ;
struct TYPE_4__ {void* tf; int type; } ;


 int ASSERT (int) ;
 scalar_t__ MAX_COLOR_LUT_ENTRIES ;
 int TF_TYPE_BYPASS ;
 int TF_TYPE_DISTRIBUTED_POINTS ;
 int TF_TYPE_PREDEFINED ;
 void* TRANSFER_FUNCTION_LINEAR ;
 void* TRANSFER_FUNCTION_SRGB ;
 struct drm_color_lut* __extract_blob_lut (int ,scalar_t__*) ;
 int __set_input_tf (TYPE_2__*,struct drm_color_lut const*,scalar_t__) ;

int amdgpu_dm_update_plane_color_mgmt(struct dm_crtc_state *crtc,
          struct dc_plane_state *dc_plane_state)
{
 const struct drm_color_lut *degamma_lut;
 uint32_t degamma_size;
 int r;

 if (crtc->cm_has_degamma) {
  degamma_lut = __extract_blob_lut(crtc->base.degamma_lut,
       &degamma_size);
  ASSERT(degamma_size == MAX_COLOR_LUT_ENTRIES);

  dc_plane_state->in_transfer_func->type =
   TF_TYPE_DISTRIBUTED_POINTS;
  if (crtc->cm_is_degamma_srgb)
   dc_plane_state->in_transfer_func->tf =
    TRANSFER_FUNCTION_SRGB;
  else
   dc_plane_state->in_transfer_func->tf =
    TRANSFER_FUNCTION_LINEAR;

  r = __set_input_tf(dc_plane_state->in_transfer_func,
       degamma_lut, degamma_size);
  if (r)
   return r;
 } else if (crtc->cm_is_degamma_srgb) {




  dc_plane_state->in_transfer_func->type = TF_TYPE_PREDEFINED;
  dc_plane_state->in_transfer_func->tf = TRANSFER_FUNCTION_SRGB;
 } else {

  dc_plane_state->in_transfer_func->type = TF_TYPE_BYPASS;
  dc_plane_state->in_transfer_func->tf = TRANSFER_FUNCTION_LINEAR;
 }

 return 0;
}
