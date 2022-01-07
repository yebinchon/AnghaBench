
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hubbub {TYPE_2__* funcs; TYPE_1__* ctx; } ;
struct TYPE_11__ {int max_uncompressed_blk_size; int max_compressed_blk_size; int independent_64b_blks; } ;
struct TYPE_12__ {TYPE_5__ rgb; } ;
struct dc_surface_dcc_cap {int capable; int const_color_support; TYPE_6__ grph; } ;
struct TYPE_9__ {int width; int height; } ;
struct dc_dcc_surface_param {scalar_t__ swizzle_mode; scalar_t__ scan; TYPE_3__ surface_size; int format; } ;
struct TYPE_10__ {scalar_t__ disable_dcc; } ;
struct dc {TYPE_4__ debug; } ;
typedef enum segment_order { ____Placeholder_segment_order } segment_order ;
typedef enum dcc_control { ____Placeholder_dcc_control } dcc_control ;
struct TYPE_8__ {int (* dcc_support_swizzle ) (scalar_t__,unsigned int,int*,int*) ;int (* dcc_support_pixel_format ) (int ,unsigned int*) ;} ;
struct TYPE_7__ {struct dc* dc; } ;


 scalar_t__ DCC_DISABLE ;
 scalar_t__ DCC_HALF_REQ_DISALBE ;
 scalar_t__ DC_SW_64KB_R_X ;
 scalar_t__ SCAN_DIRECTION_HORIZONTAL ;
 scalar_t__ SCAN_DIRECTION_VERTICAL ;



 int hubbub2_det_request_size (int ,int ,unsigned int,int*,int*) ;
 int memset (struct dc_surface_dcc_cap*,int ,int) ;
 int segment_order__contiguous ;
 int segment_order__non_contiguous ;
 int stub1 (int ,unsigned int*) ;
 int stub2 (scalar_t__,unsigned int,int*,int*) ;

bool hubbub2_get_dcc_compression_cap(struct hubbub *hubbub,
  const struct dc_dcc_surface_param *input,
  struct dc_surface_dcc_cap *output)
{
 struct dc *dc = hubbub->ctx->dc;

 enum dcc_control dcc_control;
 unsigned int bpe;
 enum segment_order segment_order_horz, segment_order_vert;
 bool req128_horz_wc, req128_vert_wc;

 memset(output, 0, sizeof(*output));

 if (dc->debug.disable_dcc == DCC_DISABLE)
  return 0;

 if (!hubbub->funcs->dcc_support_pixel_format(input->format,
   &bpe))
  return 0;

 if (!hubbub->funcs->dcc_support_swizzle(input->swizzle_mode, bpe,
   &segment_order_horz, &segment_order_vert))
  return 0;

 hubbub2_det_request_size(input->surface_size.height, input->surface_size.width,
   bpe, &req128_horz_wc, &req128_vert_wc);

 if (!req128_horz_wc && !req128_vert_wc) {
  dcc_control = 129;
 } else if (input->scan == SCAN_DIRECTION_HORIZONTAL) {
  if (!req128_horz_wc)
   dcc_control = 129;
  else if (segment_order_horz == segment_order__contiguous)
   dcc_control = 130;
  else
   dcc_control = 128;
 } else if (input->scan == SCAN_DIRECTION_VERTICAL) {
  if (!req128_vert_wc)
   dcc_control = 129;
  else if (segment_order_vert == segment_order__contiguous)
   dcc_control = 130;
  else
   dcc_control = 128;
 } else {
  if ((req128_horz_wc &&
   segment_order_horz == segment_order__non_contiguous) ||
   (req128_vert_wc &&
   segment_order_vert == segment_order__non_contiguous))

   dcc_control = 128;
  else



   dcc_control = 130;
 }


 if ((bpe == 2) && (input->swizzle_mode == DC_SW_64KB_R_X))
  dcc_control = 130;

 if (dc->debug.disable_dcc == DCC_HALF_REQ_DISALBE &&
  dcc_control != 129)
  return 0;

 switch (dcc_control) {
 case 129:
  output->grph.rgb.max_uncompressed_blk_size = 256;
  output->grph.rgb.max_compressed_blk_size = 256;
  output->grph.rgb.independent_64b_blks = 0;
  break;
 case 130:
  output->grph.rgb.max_uncompressed_blk_size = 128;
  output->grph.rgb.max_compressed_blk_size = 128;
  output->grph.rgb.independent_64b_blks = 0;
  break;
 case 128:
  output->grph.rgb.max_uncompressed_blk_size = 256;
  output->grph.rgb.max_compressed_blk_size = 64;
  output->grph.rgb.independent_64b_blks = 1;
  break;
 }
 output->capable = 1;
 output->const_color_support = 1;

 return 1;
}
