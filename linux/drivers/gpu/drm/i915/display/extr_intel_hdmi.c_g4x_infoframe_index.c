
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int MISSING_CASE (unsigned int) ;
 int VIDEO_DIP_SELECT_AVI ;
 int VIDEO_DIP_SELECT_GAMUT ;
 int VIDEO_DIP_SELECT_SPD ;
 int VIDEO_DIP_SELECT_VENDOR ;

__attribute__((used)) static u32 g4x_infoframe_index(unsigned int type)
{
 switch (type) {
 case 128:
  return VIDEO_DIP_SELECT_GAMUT;
 case 131:
  return VIDEO_DIP_SELECT_AVI;
 case 130:
  return VIDEO_DIP_SELECT_SPD;
 case 129:
  return VIDEO_DIP_SELECT_VENDOR;
 default:
  MISSING_CASE(type);
  return 0;
 }
}
