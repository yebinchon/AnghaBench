
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;




 int GLK_TVIDEO_DIP_DRM_DATA (int,int) ;





 int HSW_TVIDEO_DIP_AVI_DATA (int,int) ;
 int HSW_TVIDEO_DIP_GMP_DATA (int,int) ;
 int HSW_TVIDEO_DIP_SPD_DATA (int,int) ;
 int HSW_TVIDEO_DIP_VSC_DATA (int,int) ;
 int HSW_TVIDEO_DIP_VS_DATA (int,int) ;
 int ICL_VIDEO_DIP_PPS_DATA (int,int) ;
 int INVALID_MMIO_REG ;
 int MISSING_CASE (unsigned int) ;

__attribute__((used)) static i915_reg_t
hsw_dip_data_reg(struct drm_i915_private *dev_priv,
   enum transcoder cpu_transcoder,
   unsigned int type,
   int i)
{
 switch (type) {
 case 128:
  return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
 case 133:
  return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
 case 134:
  return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
 case 132:
  return HSW_TVIDEO_DIP_AVI_DATA(cpu_transcoder, i);
 case 130:
  return HSW_TVIDEO_DIP_SPD_DATA(cpu_transcoder, i);
 case 129:
  return HSW_TVIDEO_DIP_VS_DATA(cpu_transcoder, i);
 case 131:
  return GLK_TVIDEO_DIP_DRM_DATA(cpu_transcoder, i);
 default:
  MISSING_CASE(type);
  return INVALID_MMIO_REG;
 }
}
