
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct atmel_hlcdc_plane_state {int crtc_w; int src_w; int crtc_h; int src_h; } ;
struct TYPE_6__ {struct atmel_hlcdc_layer_desc* desc; } ;
struct atmel_hlcdc_plane {TYPE_3__ layer; } ;
struct TYPE_4__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_5__ {int scaler_config; TYPE_1__ phicoeffs; } ;
struct atmel_hlcdc_layer_desc {TYPE_2__ layout; } ;


 int ARRAY_SIZE (int ) ;
 int ATMEL_HLCDC_LAYER_SCALER_ENABLE ;
 int ATMEL_HLCDC_LAYER_SCALER_FACTORS (int,int) ;
 int ATMEL_HLCDC_XPHIDEF ;
 int ATMEL_HLCDC_YPHIDEF ;
 int atmel_hlcdc_layer_write_cfg (TYPE_3__*,int ,int) ;
 int atmel_hlcdc_plane_phiscaler_get_factor (int,int,int ) ;
 int atmel_hlcdc_plane_scaler_set_phicoeff (struct atmel_hlcdc_plane*,int ,int ,scalar_t__) ;
 int heo_downscaling_xcoef ;
 int heo_downscaling_ycoef ;
 int heo_upscaling_xcoef ;
 int heo_upscaling_ycoef ;

void atmel_hlcdc_plane_setup_scaler(struct atmel_hlcdc_plane *plane,
        struct atmel_hlcdc_plane_state *state)
{
 const struct atmel_hlcdc_layer_desc *desc = plane->layer.desc;
 u32 xfactor, yfactor;

 if (!desc->layout.scaler_config)
  return;

 if (state->crtc_w == state->src_w && state->crtc_h == state->src_h) {
  atmel_hlcdc_layer_write_cfg(&plane->layer,
         desc->layout.scaler_config, 0);
  return;
 }

 if (desc->layout.phicoeffs.x) {
  xfactor = atmel_hlcdc_plane_phiscaler_get_factor(state->src_w,
       state->crtc_w,
       ATMEL_HLCDC_XPHIDEF);

  yfactor = atmel_hlcdc_plane_phiscaler_get_factor(state->src_h,
       state->crtc_h,
       ATMEL_HLCDC_YPHIDEF);

  atmel_hlcdc_plane_scaler_set_phicoeff(plane,
    state->crtc_w < state->src_w ?
    heo_downscaling_xcoef :
    heo_upscaling_xcoef,
    ARRAY_SIZE(heo_upscaling_xcoef),
    desc->layout.phicoeffs.x);

  atmel_hlcdc_plane_scaler_set_phicoeff(plane,
    state->crtc_h < state->src_h ?
    heo_downscaling_ycoef :
    heo_upscaling_ycoef,
    ARRAY_SIZE(heo_upscaling_ycoef),
    desc->layout.phicoeffs.y);
 } else {
  xfactor = (1024 * state->src_w) / state->crtc_w;
  yfactor = (1024 * state->src_h) / state->crtc_h;
 }

 atmel_hlcdc_layer_write_cfg(&plane->layer, desc->layout.scaler_config,
        ATMEL_HLCDC_LAYER_SCALER_ENABLE |
        ATMEL_HLCDC_LAYER_SCALER_FACTORS(xfactor,
             yfactor));
}
