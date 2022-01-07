
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int MISSING_CASE (unsigned int) ;
 int VDIP_ENABLE_PPS ;
 int VIDEO_DIP_ENABLE_AVI_HSW ;
 int VIDEO_DIP_ENABLE_DRM_GLK ;
 int VIDEO_DIP_ENABLE_GCP_HSW ;
 int VIDEO_DIP_ENABLE_GMP_HSW ;
 int VIDEO_DIP_ENABLE_SPD_HSW ;
 int VIDEO_DIP_ENABLE_VSC_HSW ;
 int VIDEO_DIP_ENABLE_VS_HSW ;

__attribute__((used)) static u32 hsw_infoframe_enable(unsigned int type)
{
 switch (type) {
 case 128:
  return VIDEO_DIP_ENABLE_GCP_HSW;
 case 129:
  return VIDEO_DIP_ENABLE_GMP_HSW;
 case 134:
  return VIDEO_DIP_ENABLE_VSC_HSW;
 case 135:
  return VDIP_ENABLE_PPS;
 case 133:
  return VIDEO_DIP_ENABLE_AVI_HSW;
 case 131:
  return VIDEO_DIP_ENABLE_SPD_HSW;
 case 130:
  return VIDEO_DIP_ENABLE_VS_HSW;
 case 132:
  return VIDEO_DIP_ENABLE_DRM_GLK;
 default:
  MISSING_CASE(type);
  return 0;
 }
}
