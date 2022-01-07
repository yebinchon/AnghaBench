
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lb_pixel_depth { ____Placeholder_lb_pixel_depth } lb_pixel_depth ;


 int ASSERT (int ) ;
 int LB_PIXEL_DEPTH_18BPP ;
 int LB_PIXEL_DEPTH_24BPP ;
 int LB_PIXEL_DEPTH_30BPP ;
 int LB_PIXEL_DEPTH_36BPP ;

__attribute__((used)) static int dpp1_dscl_get_pixel_depth_val(enum lb_pixel_depth depth)
{
 if (depth == LB_PIXEL_DEPTH_30BPP)
  return 0;
 else if (depth == LB_PIXEL_DEPTH_24BPP)
  return 1;
 else if (depth == LB_PIXEL_DEPTH_18BPP)
  return 2;
 else if (depth == LB_PIXEL_DEPTH_36BPP)
  return 3;
 else {
  ASSERT(0);
  return -1;
 }
}
