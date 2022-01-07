
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct transform {int dummy; } ;
struct scaling_taps {int v_taps; int h_taps; } ;
struct TYPE_10__ {int v_taps; int v_taps_c; void* h_taps_c; void* h_taps; } ;
struct TYPE_9__ {int vert_c; int vert; int horz_c; int horz; } ;
struct TYPE_8__ {int depth; } ;
struct TYPE_7__ {int width; } ;
struct TYPE_6__ {int width; } ;
struct scaler_data {TYPE_5__ taps; TYPE_4__ ratios; TYPE_3__ lb_params; TYPE_2__ recout; TYPE_1__ viewport; } ;
struct dce_transform {scalar_t__ prescaler_on; } ;


 int IDENTITY_RATIO (int ) ;
 struct dce_transform* TO_DCE_TRANSFORM (struct transform*) ;
 int dce_transform_get_max_num_of_supported_lines (struct dce_transform*,int ,int) ;
 void* decide_taps (int ,int,int) ;

bool dce_transform_get_optimal_number_of_taps(
 struct transform *xfm,
 struct scaler_data *scl_data,
 const struct scaling_taps *in_taps)
{
 struct dce_transform *xfm_dce = TO_DCE_TRANSFORM(xfm);
 int pixel_width = scl_data->viewport.width;
 int max_num_of_lines;

 if (xfm_dce->prescaler_on &&
   (scl_data->viewport.width > scl_data->recout.width))
  pixel_width = scl_data->recout.width;

 max_num_of_lines = dce_transform_get_max_num_of_supported_lines(
  xfm_dce,
  scl_data->lb_params.depth,
  pixel_width);


 if (in_taps->v_taps >= max_num_of_lines)
  return 0;
 scl_data->taps.h_taps = decide_taps(scl_data->ratios.horz, in_taps->h_taps, 0);
 scl_data->taps.v_taps = decide_taps(scl_data->ratios.vert, in_taps->v_taps, 0);
 scl_data->taps.h_taps_c = decide_taps(scl_data->ratios.horz_c, in_taps->h_taps, 1);
 scl_data->taps.v_taps_c = decide_taps(scl_data->ratios.vert_c, in_taps->v_taps, 1);

 if (!IDENTITY_RATIO(scl_data->ratios.vert)) {

  if (in_taps->v_taps == 0
    && max_num_of_lines <= scl_data->taps.v_taps
    && scl_data->taps.v_taps > 1) {
   scl_data->taps.v_taps = max_num_of_lines - 1;
  }

  if (scl_data->taps.v_taps <= 1)
   return 0;
 }

 if (!IDENTITY_RATIO(scl_data->ratios.vert_c)) {

  if (max_num_of_lines <= scl_data->taps.v_taps_c && scl_data->taps.v_taps_c > 1) {
   scl_data->taps.v_taps_c = max_num_of_lines - 1;
  }

  if (scl_data->taps.v_taps_c <= 1)
   return 0;
 }


 return 1;
}
