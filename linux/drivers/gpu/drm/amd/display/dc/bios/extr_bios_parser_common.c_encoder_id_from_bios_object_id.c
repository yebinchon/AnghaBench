
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum encoder_id { ____Placeholder_encoder_id } encoder_id ;


 int ASSERT (int ) ;
 int ENCODER_ID_EXTERNAL_MVPU_FPGA ;
 int ENCODER_ID_EXTERNAL_NUTMEG ;
 int ENCODER_ID_EXTERNAL_TRAVIS ;
 int ENCODER_ID_INTERNAL_DAC1 ;
 int ENCODER_ID_INTERNAL_DAC2 ;
 int ENCODER_ID_INTERNAL_DDI ;
 int ENCODER_ID_INTERNAL_HDMI ;
 int ENCODER_ID_INTERNAL_KLDSCP_DAC1 ;
 int ENCODER_ID_INTERNAL_KLDSCP_DAC2 ;
 int ENCODER_ID_INTERNAL_KLDSCP_LVTMA ;
 int ENCODER_ID_INTERNAL_KLDSCP_TMDS1 ;
 int ENCODER_ID_INTERNAL_LVDS ;
 int ENCODER_ID_INTERNAL_LVTM1 ;
 int ENCODER_ID_INTERNAL_TMDS1 ;
 int ENCODER_ID_INTERNAL_TMDS2 ;
 int ENCODER_ID_INTERNAL_UNIPHY ;
 int ENCODER_ID_INTERNAL_UNIPHY1 ;
 int ENCODER_ID_INTERNAL_UNIPHY2 ;
 int ENCODER_ID_INTERNAL_UNIPHY3 ;
 int ENCODER_ID_UNKNOWN ;
 int gpu_id_from_bios_object_id (int) ;

__attribute__((used)) static enum encoder_id encoder_id_from_bios_object_id(uint32_t bios_object_id)
{
 uint32_t bios_encoder_id = gpu_id_from_bios_object_id(bios_object_id);
 enum encoder_id id;

 switch (bios_encoder_id) {
 case 137:
  id = ENCODER_ID_INTERNAL_LVDS;
  break;
 case 135:
  id = ENCODER_ID_INTERNAL_TMDS1;
  break;
 case 134:
  id = ENCODER_ID_INTERNAL_TMDS2;
  break;
 case 144:
  id = ENCODER_ID_INTERNAL_DAC1;
  break;
 case 143:
  id = ENCODER_ID_INTERNAL_DAC2;
  break;
 case 136:
  id = ENCODER_ID_INTERNAL_LVTM1;
  break;
 case 145:
  id = ENCODER_ID_INTERNAL_HDMI;
  break;
 case 138:
  id = ENCODER_ID_INTERNAL_KLDSCP_TMDS1;
  break;
 case 141:
  id = ENCODER_ID_INTERNAL_KLDSCP_DAC1;
  break;
 case 140:
  id = ENCODER_ID_INTERNAL_KLDSCP_DAC2;
  break;
 case 129:
  id = ENCODER_ID_EXTERNAL_MVPU_FPGA;
  break;
 case 142:
  id = ENCODER_ID_INTERNAL_DDI;
  break;
 case 133:
  id = ENCODER_ID_INTERNAL_UNIPHY;
  break;
 case 139:
  id = ENCODER_ID_INTERNAL_KLDSCP_LVTMA;
  break;
 case 132:
  id = ENCODER_ID_INTERNAL_UNIPHY1;
  break;
 case 131:
  id = ENCODER_ID_INTERNAL_UNIPHY2;
  break;
 case 146:
  id = ENCODER_ID_EXTERNAL_NUTMEG;
  break;
 case 128:
  id = ENCODER_ID_EXTERNAL_TRAVIS;
  break;
 case 130:
  id = ENCODER_ID_INTERNAL_UNIPHY3;
  break;
 default:
  id = ENCODER_ID_UNKNOWN;
  ASSERT(0);
  break;
 }

 return id;
}
