
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int WIN_COLOR_DEPTH_A1B5G5R5 ;
 unsigned int WIN_COLOR_DEPTH_B5G5R5A1 ;


 unsigned int WIN_COLOR_DEPTH_B8G8R8A8 ;

 unsigned int WIN_COLOR_DEPTH_R8G8B8A8 ;


 scalar_t__ tegra_plane_format_is_yuv (unsigned int,int *) ;

__attribute__((used)) static int tegra_plane_format_get_alpha(unsigned int opaque,
     unsigned int *alpha)
{
 if (tegra_plane_format_is_yuv(opaque, ((void*)0))) {
  *alpha = opaque;
  return 0;
 }

 switch (opaque) {
 case 132:
  *alpha = WIN_COLOR_DEPTH_B5G5R5A1;
  return 0;

 case 128:
  *alpha = WIN_COLOR_DEPTH_A1B5G5R5;
  return 0;

 case 129:
  *alpha = WIN_COLOR_DEPTH_R8G8B8A8;
  return 0;

 case 130:
  *alpha = WIN_COLOR_DEPTH_B8G8R8A8;
  return 0;

 case 131:
  *alpha = opaque;
  return 0;
 }

 return -EINVAL;
}
