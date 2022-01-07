
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BYTE_SWAP_NOSWAP ;
 int BYTE_SWAP_SWAP2 ;
 int EINVAL ;
 int WIN_COLOR_DEPTH_A1B5G5R5 ;
 int WIN_COLOR_DEPTH_A8B8G8R8 ;
 int WIN_COLOR_DEPTH_A8R8G8B8 ;
 int WIN_COLOR_DEPTH_AR5G5B5 ;
 int WIN_COLOR_DEPTH_B4G4R4A4 ;
 int WIN_COLOR_DEPTH_B5G5R5A1 ;
 int WIN_COLOR_DEPTH_B5G5R5X1 ;
 int WIN_COLOR_DEPTH_B5G6R5 ;
 int WIN_COLOR_DEPTH_B8G8R8A8 ;
 int WIN_COLOR_DEPTH_B8G8R8X8 ;
 int WIN_COLOR_DEPTH_R4G4B4A4 ;
 int WIN_COLOR_DEPTH_R5G5B5A ;
 int WIN_COLOR_DEPTH_R5G5B5X1 ;
 int WIN_COLOR_DEPTH_R5G6B5 ;
 int WIN_COLOR_DEPTH_R8G8B8A8 ;
 int WIN_COLOR_DEPTH_R8G8B8X8 ;
 int WIN_COLOR_DEPTH_X1B5G5R5 ;
 int WIN_COLOR_DEPTH_X1R5G5B5 ;
 int WIN_COLOR_DEPTH_YCbCr420P ;
 int WIN_COLOR_DEPTH_YCbCr422 ;
 int WIN_COLOR_DEPTH_YCbCr422P ;

int tegra_plane_format(u32 fourcc, u32 *format, u32 *swap)
{

 if (swap)
  *swap = BYTE_SWAP_NOSWAP;

 switch (fourcc) {
 case 145:
  *format = WIN_COLOR_DEPTH_B4G4R4A4;
  break;

 case 146:
  *format = WIN_COLOR_DEPTH_B5G5R5A1;
  break;

 case 139:
  *format = WIN_COLOR_DEPTH_B5G6R5;
  break;

 case 138:
  *format = WIN_COLOR_DEPTH_A1B5G5R5;
  break;

 case 144:
  *format = WIN_COLOR_DEPTH_B8G8R8A8;
  break;

 case 147:
  *format = WIN_COLOR_DEPTH_R8G8B8A8;
  break;

 case 148:
  *format = WIN_COLOR_DEPTH_R4G4B4A4;
  break;

 case 149:
  *format = WIN_COLOR_DEPTH_R5G5B5A;
  break;

 case 142:
  *format = WIN_COLOR_DEPTH_AR5G5B5;
  break;

 case 132:
  *format = WIN_COLOR_DEPTH_B5G5R5X1;
  break;

 case 136:
  *format = WIN_COLOR_DEPTH_X1B5G5R5;
  break;

 case 134:
  *format = WIN_COLOR_DEPTH_R5G5B5X1;
  break;

 case 140:
  *format = WIN_COLOR_DEPTH_X1R5G5B5;
  break;

 case 143:
  *format = WIN_COLOR_DEPTH_R5G6B5;
  break;

 case 141:
  *format = WIN_COLOR_DEPTH_A8R8G8B8;
  break;

 case 137:
  *format = WIN_COLOR_DEPTH_A8B8G8R8;
  break;

 case 131:
  *format = WIN_COLOR_DEPTH_B8G8R8X8;
  break;

 case 133:
  *format = WIN_COLOR_DEPTH_R8G8B8X8;
  break;

 case 135:
  *format = WIN_COLOR_DEPTH_YCbCr422;
  break;

 case 128:
  if (!swap)
   return -EINVAL;

  *format = WIN_COLOR_DEPTH_YCbCr422;
  *swap = BYTE_SWAP_SWAP2;
  break;

 case 130:
  *format = WIN_COLOR_DEPTH_YCbCr420P;
  break;

 case 129:
  *format = WIN_COLOR_DEPTH_YCbCr422P;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
