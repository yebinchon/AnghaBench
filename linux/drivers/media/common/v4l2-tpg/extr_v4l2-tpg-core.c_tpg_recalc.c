
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int recalc_colors; int recalc_lines; scalar_t__ real_xfer_func; scalar_t__ xfer_func; scalar_t__ real_ycbcr_enc; scalar_t__ ycbcr_enc; scalar_t__ real_quantization; scalar_t__ quantization; scalar_t__ color_enc; int recalc_square_border; int colorspace; int hsv_enc; int real_hsv_enc; } ;


 scalar_t__ TGP_COLOR_ENC_YCBCR ;
 scalar_t__ V4L2_MAP_QUANTIZATION_DEFAULT (int,int ,scalar_t__) ;
 scalar_t__ V4L2_MAP_XFER_FUNC_DEFAULT (int ) ;
 scalar_t__ V4L2_MAP_YCBCR_ENC_DEFAULT (int ) ;
 scalar_t__ V4L2_QUANTIZATION_DEFAULT ;
 scalar_t__ V4L2_XFER_FUNC_DEFAULT ;
 scalar_t__ V4L2_YCBCR_ENC_DEFAULT ;
 int tpg_calculate_square_border (struct tpg_data*) ;
 int tpg_precalculate_colors (struct tpg_data*) ;
 int tpg_precalculate_line (struct tpg_data*) ;

__attribute__((used)) static void tpg_recalc(struct tpg_data *tpg)
{
 if (tpg->recalc_colors) {
  tpg->recalc_colors = 0;
  tpg->recalc_lines = 1;
  tpg->real_xfer_func = tpg->xfer_func;
  tpg->real_ycbcr_enc = tpg->ycbcr_enc;
  tpg->real_hsv_enc = tpg->hsv_enc;
  tpg->real_quantization = tpg->quantization;

  if (tpg->xfer_func == V4L2_XFER_FUNC_DEFAULT)
   tpg->real_xfer_func =
    V4L2_MAP_XFER_FUNC_DEFAULT(tpg->colorspace);

  if (tpg->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT)
   tpg->real_ycbcr_enc =
    V4L2_MAP_YCBCR_ENC_DEFAULT(tpg->colorspace);

  if (tpg->quantization == V4L2_QUANTIZATION_DEFAULT)
   tpg->real_quantization =
    V4L2_MAP_QUANTIZATION_DEFAULT(
     tpg->color_enc != TGP_COLOR_ENC_YCBCR,
     tpg->colorspace, tpg->real_ycbcr_enc);

  tpg_precalculate_colors(tpg);
 }
 if (tpg->recalc_square_border) {
  tpg->recalc_square_border = 0;
  tpg_calculate_square_border(tpg);
 }
 if (tpg->recalc_lines) {
  tpg->recalc_lines = 0;
  tpg_precalculate_line(tpg);
 }
}
