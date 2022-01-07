
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int top; int left; int height; int width; } ;
struct TYPE_3__ {int top; int left; int height; int width; } ;
struct tpg_data {scalar_t__ color_enc; int real_rgb_range; int rgb_range; int real_quantization; int quantization; int real_ycbcr_enc; int ycbcr_enc; int real_hsv_enc; int hsv_enc; int real_xfer_func; int xfer_func; int colorspace; TYPE_2__ compose; TYPE_1__ crop; int field; int src_height; int src_width; } ;


 scalar_t__ TGP_COLOR_ENC_HSV ;
 scalar_t__ TGP_COLOR_ENC_YCBCR ;
 int pr_info (char*,int ,...) ;
 int tpg_color_enc_str (scalar_t__) ;

void tpg_log_status(struct tpg_data *tpg)
{
 pr_info("tpg source WxH: %ux%u (%s)\n",
  tpg->src_width, tpg->src_height,
  tpg_color_enc_str(tpg->color_enc));
 pr_info("tpg field: %u\n", tpg->field);
 pr_info("tpg crop: %ux%u@%dx%d\n", tpg->crop.width, tpg->crop.height,
   tpg->crop.left, tpg->crop.top);
 pr_info("tpg compose: %ux%u@%dx%d\n", tpg->compose.width, tpg->compose.height,
   tpg->compose.left, tpg->compose.top);
 pr_info("tpg colorspace: %d\n", tpg->colorspace);
 pr_info("tpg transfer function: %d/%d\n", tpg->xfer_func, tpg->real_xfer_func);
 if (tpg->color_enc == TGP_COLOR_ENC_HSV)
  pr_info("tpg HSV encoding: %d/%d\n",
   tpg->hsv_enc, tpg->real_hsv_enc);
 else if (tpg->color_enc == TGP_COLOR_ENC_YCBCR)
  pr_info("tpg Y'CbCr encoding: %d/%d\n",
   tpg->ycbcr_enc, tpg->real_ycbcr_enc);
 pr_info("tpg quantization: %d/%d\n", tpg->quantization, tpg->real_quantization);
 pr_info("tpg RGB range: %d/%d\n", tpg->rgb_range, tpg->real_rgb_range);
}
