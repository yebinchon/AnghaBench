
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ uint32_t ;
struct scaling_taps {int h_taps; int v_taps; int v_taps_c; int h_taps_c; } ;
struct TYPE_19__ {int h_taps; int v_taps; int v_taps_c; int h_taps_c; } ;
struct TYPE_11__ {long long value; } ;
struct TYPE_18__ {TYPE_10__ vert_c; TYPE_10__ horz_c; TYPE_10__ vert; TYPE_10__ horz; } ;
struct TYPE_14__ {scalar_t__ width; } ;
struct TYPE_12__ {scalar_t__ width; } ;
struct scaler_data {scalar_t__ format; scalar_t__ h_active; TYPE_8__ taps; TYPE_7__ ratios; TYPE_3__ viewport; TYPE_1__ recout; } ;
struct dpp {TYPE_6__* ctx; TYPE_2__* caps; } ;
struct TYPE_20__ {long long value; } ;
struct TYPE_17__ {TYPE_5__* dc; } ;
struct TYPE_15__ {scalar_t__ max_downscale_src_width; int always_scale; } ;
struct TYPE_16__ {TYPE_4__ debug; } ;
struct TYPE_13__ {scalar_t__ dscl_data_proc_format; } ;


 scalar_t__ DSCL_DATA_PRCESSING_FIXED_FORMAT ;
 scalar_t__ IDENTITY_RATIO (TYPE_10__) ;
 scalar_t__ PIXEL_FORMAT_FP16 ;
 TYPE_9__ dc_fixpt_one ;

__attribute__((used)) static bool dpp_get_optimal_number_of_taps(
  struct dpp *dpp,
  struct scaler_data *scl_data,
  const struct scaling_taps *in_taps)
{
 uint32_t pixel_width;

 if (scl_data->viewport.width > scl_data->recout.width)
  pixel_width = scl_data->recout.width;
 else
  pixel_width = scl_data->viewport.width;


 if (scl_data->format == PIXEL_FORMAT_FP16 &&
  dpp->caps->dscl_data_proc_format == DSCL_DATA_PRCESSING_FIXED_FORMAT &&
  scl_data->ratios.horz.value != dc_fixpt_one.value &&
  scl_data->ratios.vert.value != dc_fixpt_one.value)
  return 0;

 if (scl_data->viewport.width > scl_data->h_active &&
  dpp->ctx->dc->debug.max_downscale_src_width != 0 &&
  scl_data->viewport.width > dpp->ctx->dc->debug.max_downscale_src_width)
  return 0;




 if (scl_data->ratios.horz.value == (4ll << 32))
  scl_data->ratios.horz.value--;
 if (scl_data->ratios.vert.value == (4ll << 32))
  scl_data->ratios.vert.value--;
 if (scl_data->ratios.horz_c.value == (4ll << 32))
  scl_data->ratios.horz_c.value--;
 if (scl_data->ratios.vert_c.value == (4ll << 32))
  scl_data->ratios.vert_c.value--;


 if (in_taps->h_taps == 0)
  scl_data->taps.h_taps = 4;
 else
  scl_data->taps.h_taps = in_taps->h_taps;
 if (in_taps->v_taps == 0)
  scl_data->taps.v_taps = 4;
 else
  scl_data->taps.v_taps = in_taps->v_taps;
 if (in_taps->v_taps_c == 0)
  scl_data->taps.v_taps_c = 2;
 else
  scl_data->taps.v_taps_c = in_taps->v_taps_c;
 if (in_taps->h_taps_c == 0)
  scl_data->taps.h_taps_c = 2;

 else if ((in_taps->h_taps_c % 2) != 0 && in_taps->h_taps_c != 1)
  scl_data->taps.h_taps_c = in_taps->h_taps_c - 1;
 else
  scl_data->taps.h_taps_c = in_taps->h_taps_c;

 if (!dpp->ctx->dc->debug.always_scale) {
  if (IDENTITY_RATIO(scl_data->ratios.horz))
   scl_data->taps.h_taps = 1;
  if (IDENTITY_RATIO(scl_data->ratios.vert))
   scl_data->taps.v_taps = 1;
  if (IDENTITY_RATIO(scl_data->ratios.horz_c))
   scl_data->taps.h_taps_c = 1;
  if (IDENTITY_RATIO(scl_data->ratios.vert_c))
   scl_data->taps.v_taps_c = 1;
 }

 return 1;
}
