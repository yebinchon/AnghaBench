
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int MISSING_CASE (unsigned int) ;
 int VIDEO_DIP_ENABLE_AVI ;
 int VIDEO_DIP_ENABLE_GAMUT ;
 int VIDEO_DIP_ENABLE_GCP ;
 int VIDEO_DIP_ENABLE_SPD ;
 int VIDEO_DIP_ENABLE_VENDOR ;

__attribute__((used)) static u32 g4x_infoframe_enable(unsigned int type)
{
 switch (type) {
 case 128:
  return VIDEO_DIP_ENABLE_GCP;
 case 129:
  return VIDEO_DIP_ENABLE_GAMUT;
 case 134:
  return 0;
 case 133:
  return VIDEO_DIP_ENABLE_AVI;
 case 131:
  return VIDEO_DIP_ENABLE_SPD;
 case 130:
  return VIDEO_DIP_ENABLE_VENDOR;
 case 132:
  return 0;
 default:
  MISSING_CASE(type);
  return 0;
 }
}
