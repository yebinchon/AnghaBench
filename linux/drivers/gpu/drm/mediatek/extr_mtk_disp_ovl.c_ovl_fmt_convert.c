
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_ovl {int dummy; } ;
 unsigned int OVL_CON_BYTE_SWAP ;
 unsigned int OVL_CON_CLRFMT_ARGB8888 ;
 unsigned int OVL_CON_CLRFMT_RGB565 (struct mtk_disp_ovl*) ;
 unsigned int OVL_CON_CLRFMT_RGB888 (struct mtk_disp_ovl*) ;
 unsigned int OVL_CON_CLRFMT_RGBA8888 ;
 unsigned int OVL_CON_CLRFMT_UYVY ;
 unsigned int OVL_CON_CLRFMT_YUYV ;
 unsigned int OVL_CON_MTX_YUV_TO_RGB ;

__attribute__((used)) static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
{





 switch (fmt) {
 default:
 case 135:
  return OVL_CON_CLRFMT_RGB565(ovl);
 case 139:
  return OVL_CON_CLRFMT_RGB565(ovl) | OVL_CON_BYTE_SWAP;
 case 134:
  return OVL_CON_CLRFMT_RGB888(ovl);
 case 138:
  return OVL_CON_CLRFMT_RGB888(ovl) | OVL_CON_BYTE_SWAP;
 case 132:
 case 133:
  return OVL_CON_CLRFMT_ARGB8888;
 case 136:
 case 137:
  return OVL_CON_CLRFMT_ARGB8888 | OVL_CON_BYTE_SWAP;
 case 129:
 case 140:
  return OVL_CON_CLRFMT_RGBA8888;
 case 130:
 case 141:
  return OVL_CON_CLRFMT_RGBA8888 | OVL_CON_BYTE_SWAP;
 case 131:
  return OVL_CON_CLRFMT_UYVY | OVL_CON_MTX_YUV_TO_RGB;
 case 128:
  return OVL_CON_CLRFMT_YUYV | OVL_CON_MTX_YUV_TO_RGB;
 }
}
