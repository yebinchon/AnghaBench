
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dsc_config {int slice_width; unsigned long slice_chunk_size; int bits_per_pixel; int mux_word_size; int bits_per_component; int slice_height; int initial_scale_value; unsigned long scale_decrement_interval; scalar_t__ final_offset; scalar_t__ rc_model_size; int initial_xmit_delay; unsigned long nfl_bpg_offset; int first_line_bpg_offset; unsigned long slice_bpg_offset; unsigned long initial_offset; int scale_increment_interval; unsigned long rc_bits; unsigned long initial_dec_delay; scalar_t__ native_422; scalar_t__ convert_rgb; scalar_t__ native_420; } ;


 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 int DRM_DEBUG_KMS (char*) ;
 int DSC_RC_PIXELS_PER_GROUP ;
 unsigned long DSC_SCALE_DECREMENT_INTERVAL_MAX ;
 int ERANGE ;

int drm_dsc_compute_rc_parameters(struct drm_dsc_config *vdsc_cfg)
{
 unsigned long groups_per_line = 0;
 unsigned long groups_total = 0;
 unsigned long num_extra_mux_bits = 0;
 unsigned long slice_bits = 0;
 unsigned long hrd_delay = 0;
 unsigned long final_scale = 0;
 unsigned long rbs_min = 0;

 if (vdsc_cfg->native_420 || vdsc_cfg->native_422) {

  groups_per_line = DIV_ROUND_UP(vdsc_cfg->slice_width / 2,
            DSC_RC_PIXELS_PER_GROUP);


  vdsc_cfg->slice_chunk_size = DIV_ROUND_UP(vdsc_cfg->slice_width / 2 *
         vdsc_cfg->bits_per_pixel,
         (8 * 16));
 } else {

  groups_per_line = DIV_ROUND_UP(vdsc_cfg->slice_width,
            DSC_RC_PIXELS_PER_GROUP);


  vdsc_cfg->slice_chunk_size = DIV_ROUND_UP(vdsc_cfg->slice_width *
         vdsc_cfg->bits_per_pixel,
         (8 * 16));
 }

 if (vdsc_cfg->convert_rgb)
  num_extra_mux_bits = 3 * (vdsc_cfg->mux_word_size +
       (4 * vdsc_cfg->bits_per_component + 4)
       - 2);
 else if (vdsc_cfg->native_422)
  num_extra_mux_bits = 4 * vdsc_cfg->mux_word_size +
   (4 * vdsc_cfg->bits_per_component + 4) +
   3 * (4 * vdsc_cfg->bits_per_component) - 2;
 else
  num_extra_mux_bits = 3 * vdsc_cfg->mux_word_size +
   (4 * vdsc_cfg->bits_per_component + 4) +
   2 * (4 * vdsc_cfg->bits_per_component) - 2;

 slice_bits = 8 * vdsc_cfg->slice_chunk_size * vdsc_cfg->slice_height;

 while ((num_extra_mux_bits > 0) &&
        ((slice_bits - num_extra_mux_bits) % vdsc_cfg->mux_word_size))
  num_extra_mux_bits--;

 if (groups_per_line < vdsc_cfg->initial_scale_value - 8)
  vdsc_cfg->initial_scale_value = groups_per_line + 8;


 if (vdsc_cfg->initial_scale_value > 8)
  vdsc_cfg->scale_decrement_interval = groups_per_line /
   (vdsc_cfg->initial_scale_value - 8);
 else
  vdsc_cfg->scale_decrement_interval = DSC_SCALE_DECREMENT_INTERVAL_MAX;

 vdsc_cfg->final_offset = vdsc_cfg->rc_model_size -
  (vdsc_cfg->initial_xmit_delay *
   vdsc_cfg->bits_per_pixel + 8) / 16 + num_extra_mux_bits;

 if (vdsc_cfg->final_offset >= vdsc_cfg->rc_model_size) {
  DRM_DEBUG_KMS("FinalOfs < RcModelSze for this InitialXmitDelay\n");
  return -ERANGE;
 }

 final_scale = (vdsc_cfg->rc_model_size * 8) /
  (vdsc_cfg->rc_model_size - vdsc_cfg->final_offset);
 if (vdsc_cfg->slice_height > 1)





  vdsc_cfg->nfl_bpg_offset = DIV_ROUND_UP((vdsc_cfg->first_line_bpg_offset << 11),
       (vdsc_cfg->slice_height - 1));
 else
  vdsc_cfg->nfl_bpg_offset = 0;


 if (vdsc_cfg->nfl_bpg_offset > 65535) {
  DRM_DEBUG_KMS("NflBpgOffset is too large for this slice height\n");
  return -ERANGE;
 }


 groups_total = groups_per_line * vdsc_cfg->slice_height;


 vdsc_cfg->slice_bpg_offset = DIV_ROUND_UP(((vdsc_cfg->rc_model_size -
          vdsc_cfg->initial_offset +
          num_extra_mux_bits) << 11),
        groups_total);

 if (final_scale > 9) {






  vdsc_cfg->scale_increment_interval =
    (vdsc_cfg->final_offset * (1 << 11)) /
    ((vdsc_cfg->nfl_bpg_offset +
    vdsc_cfg->slice_bpg_offset) *
    (final_scale - 9));
 } else {




  vdsc_cfg->scale_increment_interval = 0;
 }

 if (vdsc_cfg->scale_increment_interval > 65535) {
  DRM_DEBUG_KMS("ScaleIncrementInterval is large for slice height\n");
  return -ERANGE;
 }






 rbs_min = vdsc_cfg->rc_model_size - vdsc_cfg->initial_offset +
  DIV_ROUND_UP(vdsc_cfg->initial_xmit_delay *
        vdsc_cfg->bits_per_pixel, 16) +
  groups_per_line * vdsc_cfg->first_line_bpg_offset;

 hrd_delay = DIV_ROUND_UP((rbs_min * 16), vdsc_cfg->bits_per_pixel);
 vdsc_cfg->rc_bits = (hrd_delay * vdsc_cfg->bits_per_pixel) / 16;
 vdsc_cfg->initial_dec_delay = hrd_delay - vdsc_cfg->initial_xmit_delay;

 return 0;
}
