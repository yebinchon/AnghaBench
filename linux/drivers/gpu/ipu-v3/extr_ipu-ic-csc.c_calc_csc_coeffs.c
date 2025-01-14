
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipu_ic_csc_params {int dummy; } ;
struct TYPE_4__ {scalar_t__ cs; int quant; } ;
struct TYPE_3__ {scalar_t__ cs; int enc; int quant; } ;
struct ipu_ic_csc {struct ipu_ic_csc_params params; TYPE_2__ in_cs; TYPE_1__ out_cs; } ;


 int ENOTSUPP ;
 scalar_t__ IPUV3_COLORSPACE_YUV ;
 int QUANT_MAP (int ) ;


 struct ipu_ic_csc_params** rgb2rgb ;
 struct ipu_ic_csc_params** rgb2yuv_601 ;
 struct ipu_ic_csc_params** rgb2yuv_709 ;
 struct ipu_ic_csc_params** yuv2rgb_601 ;
 struct ipu_ic_csc_params** yuv2rgb_709 ;
 struct ipu_ic_csc_params** yuv2yuv ;

__attribute__((used)) static int calc_csc_coeffs(struct ipu_ic_csc *csc)
{
 const struct ipu_ic_csc_params **params_tbl;
 int tbl_idx;

 tbl_idx = (QUANT_MAP(csc->in_cs.quant) << 1) |
  QUANT_MAP(csc->out_cs.quant);

 if (csc->in_cs.cs == csc->out_cs.cs) {
  csc->params = (csc->in_cs.cs == IPUV3_COLORSPACE_YUV) ?
   *yuv2yuv[tbl_idx] : *rgb2rgb[tbl_idx];

  return 0;
 }



 switch (csc->out_cs.enc) {
 case 129:
  params_tbl = (csc->in_cs.cs == IPUV3_COLORSPACE_YUV) ?
   yuv2rgb_601 : rgb2yuv_601;
  break;
 case 128:
  params_tbl = (csc->in_cs.cs == IPUV3_COLORSPACE_YUV) ?
   yuv2rgb_709 : rgb2yuv_709;
  break;
 default:
  return -ENOTSUPP;
 }

 csc->params = *params_tbl[tbl_idx];

 return 0;
}
