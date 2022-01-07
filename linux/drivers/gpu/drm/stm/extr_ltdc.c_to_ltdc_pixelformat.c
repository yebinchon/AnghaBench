
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ltdc_pix_fmt { ____Placeholder_ltdc_pix_fmt } ltdc_pix_fmt ;
 int PF_ARGB1555 ;
 int PF_ARGB4444 ;
 int PF_ARGB8888 ;
 int PF_L8 ;
 int PF_NONE ;
 int PF_RGB565 ;
 int PF_RGB888 ;
 int PF_RGBA8888 ;

__attribute__((used)) static inline enum ltdc_pix_fmt to_ltdc_pixelformat(u32 drm_fmt)
{
 enum ltdc_pix_fmt pf;

 switch (drm_fmt) {
 case 136:
 case 128:
  pf = PF_ARGB8888;
  break;
 case 132:
 case 131:
  pf = PF_RGBA8888;
  break;
 case 133:
  pf = PF_RGB888;
  break;
 case 134:
  pf = PF_RGB565;
  break;
 case 138:
 case 130:
  pf = PF_ARGB1555;
  break;
 case 137:
 case 129:
  pf = PF_ARGB4444;
  break;
 case 135:
  pf = PF_L8;
  break;
 default:
  pf = PF_NONE;
  break;

 }

 return pf;
}
