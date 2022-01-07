
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dispc_device {TYPE_1__* feat; } ;
struct csc_coef_yuv2rgb {int member_0; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_9; int member_8; int member_1; } ;
struct csc_coef_rgb2yuv {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; } ;
struct TYPE_2__ {scalar_t__ has_writeback; } ;


 int dispc_get_num_ovls (struct dispc_device*) ;
 int dispc_ovl_write_color_conv_coef (struct dispc_device*,int,struct csc_coef_yuv2rgb const*) ;
 int dispc_wb_write_color_conv_coef (struct dispc_device*,struct csc_coef_rgb2yuv const*) ;

__attribute__((used)) static void dispc_setup_color_conv_coef(struct dispc_device *dispc)
{
 int i;
 int num_ovl = dispc_get_num_ovls(dispc);


 const struct csc_coef_yuv2rgb coefs_yuv2rgb_bt601_lim = {
  298, 0, 409,
  298, -100, -208,
  298, 516, 0,
  0,
 };


 const struct csc_coef_rgb2yuv coefs_rgb2yuv_bt601_lim = {
   66, 129, 25,
  -38, -74, 112,
  112, -94, -18,
  0,
 };

 for (i = 1; i < num_ovl; i++)
  dispc_ovl_write_color_conv_coef(dispc, i, &coefs_yuv2rgb_bt601_lim);

 if (dispc->feat->has_writeback)
  dispc_wb_write_color_conv_coef(dispc, &coefs_rgb2yuv_bt601_lim);
}
