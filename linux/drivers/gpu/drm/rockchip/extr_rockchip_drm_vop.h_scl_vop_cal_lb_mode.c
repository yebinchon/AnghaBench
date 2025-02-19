
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LB_RGB_1920X5 ;
 int LB_RGB_2560X4 ;
 int LB_RGB_3840X2 ;
 int LB_YUV_2560X8 ;
 int LB_YUV_3840X5 ;

__attribute__((used)) static inline int scl_vop_cal_lb_mode(int width, bool is_yuv)
{
 int lb_mode;

 if (is_yuv) {
  if (width > 1280)
   lb_mode = LB_YUV_3840X5;
  else
   lb_mode = LB_YUV_2560X8;
 } else {
  if (width > 2560)
   lb_mode = LB_RGB_3840X2;
  else if (width > 1920)
   lb_mode = LB_RGB_2560X4;
  else
   lb_mode = LB_RGB_1920X5;
 }

 return lb_mode;
}
