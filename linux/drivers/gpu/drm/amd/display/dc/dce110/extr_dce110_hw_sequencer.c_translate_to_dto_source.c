
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum controller_id { ____Placeholder_controller_id } controller_id ;
typedef enum audio_dto_source { ____Placeholder_audio_dto_source } audio_dto_source ;
 int DTO_SOURCE_ID0 ;
 int DTO_SOURCE_ID1 ;
 int DTO_SOURCE_ID2 ;
 int DTO_SOURCE_ID3 ;
 int DTO_SOURCE_ID4 ;
 int DTO_SOURCE_ID5 ;
 int DTO_SOURCE_UNKNOWN ;

__attribute__((used)) static enum audio_dto_source translate_to_dto_source(enum controller_id crtc_id)
{
 switch (crtc_id) {
 case 133:
  return DTO_SOURCE_ID0;
 case 132:
  return DTO_SOURCE_ID1;
 case 131:
  return DTO_SOURCE_ID2;
 case 130:
  return DTO_SOURCE_ID3;
 case 129:
  return DTO_SOURCE_ID4;
 case 128:
  return DTO_SOURCE_ID5;
 default:
  return DTO_SOURCE_UNKNOWN;
 }
}
