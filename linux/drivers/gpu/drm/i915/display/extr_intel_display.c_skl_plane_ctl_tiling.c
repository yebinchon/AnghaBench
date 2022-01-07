
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
 int MISSING_CASE (int) ;
 int PLANE_CTL_RENDER_DECOMPRESSION_ENABLE ;
 int PLANE_CTL_TILED_X ;
 int PLANE_CTL_TILED_Y ;
 int PLANE_CTL_TILED_YF ;

__attribute__((used)) static u32 skl_plane_ctl_tiling(u64 fb_modifier)
{
 switch (fb_modifier) {
 case 133:
  break;
 case 132:
  return PLANE_CTL_TILED_X;
 case 131:
  return PLANE_CTL_TILED_Y;
 case 130:
  return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
 case 129:
  return PLANE_CTL_TILED_YF;
 case 128:
  return PLANE_CTL_TILED_YF | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
 default:
  MISSING_CASE(fb_modifier);
 }

 return 0;
}
