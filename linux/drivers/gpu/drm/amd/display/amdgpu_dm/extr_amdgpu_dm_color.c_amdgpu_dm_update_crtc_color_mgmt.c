
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct drm_color_lut {int dummy; } ;
struct drm_color_ctm {int dummy; } ;
struct TYPE_12__ {TYPE_3__* ctm; int gamma_lut; int degamma_lut; TYPE_2__* state; } ;
struct dm_crtc_state {int cm_has_degamma; int cm_is_degamma_srgb; TYPE_4__ base; struct dc_stream_state* stream; } ;
struct TYPE_14__ {int enable_adjustment; } ;
struct TYPE_13__ {int enable_remap; int matrix; } ;
struct dc_stream_state {TYPE_6__ csc_color_matrix; TYPE_5__ gamut_remap_matrix; TYPE_7__* out_transfer_func; } ;
struct amdgpu_device {scalar_t__ asic_type; } ;
struct TYPE_15__ {void* tf; void* type; } ;
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_10__ {TYPE_1__* dev; } ;
struct TYPE_9__ {scalar_t__ dev_private; } ;


 scalar_t__ CHIP_RAVEN ;
 int EINVAL ;
 scalar_t__ MAX_COLOR_LEGACY_LUT_ENTRIES ;
 scalar_t__ MAX_COLOR_LUT_ENTRIES ;
 void* TF_TYPE_BYPASS ;
 void* TF_TYPE_DISTRIBUTED_POINTS ;
 void* TRANSFER_FUNCTION_LINEAR ;
 void* TRANSFER_FUNCTION_SRGB ;
 int __drm_ctm_to_dc_matrix (struct drm_color_ctm*,int ) ;
 struct drm_color_lut* __extract_blob_lut (int ,scalar_t__*) ;
 int __is_lut_linear (struct drm_color_lut const*,scalar_t__) ;
 int __set_legacy_tf (TYPE_7__*,struct drm_color_lut const*,scalar_t__,int) ;
 int __set_output_tf (TYPE_7__*,struct drm_color_lut const*,scalar_t__,int) ;

int amdgpu_dm_update_crtc_color_mgmt(struct dm_crtc_state *crtc)
{
 struct dc_stream_state *stream = crtc->stream;
 struct amdgpu_device *adev =
  (struct amdgpu_device *)crtc->base.state->dev->dev_private;
 bool has_rom = adev->asic_type <= CHIP_RAVEN;
 struct drm_color_ctm *ctm = ((void*)0);
 const struct drm_color_lut *degamma_lut, *regamma_lut;
 uint32_t degamma_size, regamma_size;
 bool has_regamma, has_degamma;
 bool is_legacy;
 int r;

 degamma_lut = __extract_blob_lut(crtc->base.degamma_lut, &degamma_size);
 if (degamma_lut && degamma_size != MAX_COLOR_LUT_ENTRIES)
  return -EINVAL;

 regamma_lut = __extract_blob_lut(crtc->base.gamma_lut, &regamma_size);
 if (regamma_lut && regamma_size != MAX_COLOR_LUT_ENTRIES &&
     regamma_size != MAX_COLOR_LEGACY_LUT_ENTRIES)
  return -EINVAL;

 has_degamma =
  degamma_lut && !__is_lut_linear(degamma_lut, degamma_size);

 has_regamma =
  regamma_lut && !__is_lut_linear(regamma_lut, regamma_size);

 is_legacy = regamma_size == MAX_COLOR_LEGACY_LUT_ENTRIES;


 crtc->cm_has_degamma = 0;
 crtc->cm_is_degamma_srgb = 0;


 if (is_legacy) {
  crtc->cm_is_degamma_srgb = 1;
  stream->out_transfer_func->type = TF_TYPE_DISTRIBUTED_POINTS;
  stream->out_transfer_func->tf = TRANSFER_FUNCTION_SRGB;

  r = __set_legacy_tf(stream->out_transfer_func, regamma_lut,
        regamma_size, has_rom);
  if (r)
   return r;
 } else if (has_regamma) {

  stream->out_transfer_func->type = TF_TYPE_DISTRIBUTED_POINTS;
  stream->out_transfer_func->tf = TRANSFER_FUNCTION_LINEAR;

  r = __set_output_tf(stream->out_transfer_func, regamma_lut,
        regamma_size, has_rom);
  if (r)
   return r;
 } else {




  stream->out_transfer_func->type = TF_TYPE_BYPASS;
  stream->out_transfer_func->tf = TRANSFER_FUNCTION_LINEAR;
 }






 crtc->cm_has_degamma = has_degamma;


 if (crtc->base.ctm) {
  ctm = (struct drm_color_ctm *)crtc->base.ctm->data;
  __drm_ctm_to_dc_matrix(ctm, stream->gamut_remap_matrix.matrix);

  stream->gamut_remap_matrix.enable_remap = 1;
  stream->csc_color_matrix.enable_adjustment = 0;
 } else {

  stream->gamut_remap_matrix.enable_remap = 0;
  stream->csc_color_matrix.enable_adjustment = 0;
 }

 return 0;
}
