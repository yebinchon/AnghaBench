
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int integer; } ;
struct sclv_ratios_inits {int h_int_scale_ratio_luma; int v_int_scale_ratio_luma; int h_int_scale_ratio_chroma; int v_int_scale_ratio_chroma; TYPE_5__ v_init_chroma; TYPE_4__ h_init_chroma; TYPE_3__ v_init_luma; TYPE_2__ h_init_luma; } ;
struct TYPE_6__ {int vert_c; int horz_c; int vert; int horz; } ;
struct scaler_data {TYPE_1__ ratios; } ;
struct rect {int dummy; } ;
struct dce_transform {int dummy; } ;


 int dc_fixpt_u2d19 (int ) ;

__attribute__((used)) static void calculate_inits(
 struct dce_transform *xfm_dce,
 const struct scaler_data *data,
 struct sclv_ratios_inits *inits,
 struct rect *luma_viewport,
 struct rect *chroma_viewport)
{
 inits->h_int_scale_ratio_luma =
  dc_fixpt_u2d19(data->ratios.horz) << 5;
 inits->v_int_scale_ratio_luma =
  dc_fixpt_u2d19(data->ratios.vert) << 5;
 inits->h_int_scale_ratio_chroma =
  dc_fixpt_u2d19(data->ratios.horz_c) << 5;
 inits->v_int_scale_ratio_chroma =
  dc_fixpt_u2d19(data->ratios.vert_c) << 5;

 inits->h_init_luma.integer = 1;
 inits->v_init_luma.integer = 1;
 inits->h_init_chroma.integer = 1;
 inits->v_init_chroma.integer = 1;
}
