
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct line_buffer_params {int interleave_en; int alpha_en; int pixel_expan_mode; int dynamic_pixel_depth; int depth; } ;
struct TYPE_4__ {TYPE_1__* caps; } ;
struct dcn10_dpp {TYPE_2__ base; } ;
typedef enum lb_memory_config { ____Placeholder_lb_memory_config } lb_memory_config ;
struct TYPE_3__ {scalar_t__ dscl_data_proc_format; } ;


 int DITHER_EN ;
 scalar_t__ DSCL_DATA_PRCESSING_FIXED_FORMAT ;
 int DYNAMIC_PIXEL_DEPTH ;
 int INTERLEAVE_EN ;
 int LB_DATA_FORMAT ;
 int LB_DATA_FORMAT__ALPHA_EN ;
 int LB_MAX_PARTITIONS ;
 int LB_MEMORY_CTRL ;
 int MEMORY_CONFIG ;
 int PIXEL_DEPTH ;
 int PIXEL_EXPAN_MODE ;
 int PIXEL_REDUCE_MODE ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_SET_7 (int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int ,int ,int,int ,int) ;
 int dpp1_dscl_get_pixel_depth_val (int ) ;

__attribute__((used)) static void dpp1_dscl_set_lb(
 struct dcn10_dpp *dpp,
 const struct line_buffer_params *lb_params,
 enum lb_memory_config mem_size_config)
{

 if (dpp->base.caps->dscl_data_proc_format == DSCL_DATA_PRCESSING_FIXED_FORMAT) {

  uint32_t pixel_depth = dpp1_dscl_get_pixel_depth_val(lb_params->depth);
  uint32_t dyn_pix_depth = lb_params->dynamic_pixel_depth;

  REG_SET_7(LB_DATA_FORMAT, 0,
   PIXEL_DEPTH, pixel_depth,
   PIXEL_EXPAN_MODE, lb_params->pixel_expan_mode,
   PIXEL_REDUCE_MODE, 1,
   DYNAMIC_PIXEL_DEPTH, dyn_pix_depth,
   DITHER_EN, 0,
   INTERLEAVE_EN, lb_params->interleave_en,
   LB_DATA_FORMAT__ALPHA_EN, lb_params->alpha_en);
 }
 REG_SET_2(LB_MEMORY_CTRL, 0,
  MEMORY_CONFIG, mem_size_config,
  LB_MAX_PARTITIONS, 63);
}
