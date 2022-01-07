
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graphics_object_id {int id; int enum_id; } ;
typedef enum transmitter { ____Placeholder_transmitter } transmitter ;
 int TRANSMITTER_NUTMEG_CRT ;
 int TRANSMITTER_TRAVIS_CRT ;
 int TRANSMITTER_TRAVIS_LCD ;
 int TRANSMITTER_UNIPHY_A ;
 int TRANSMITTER_UNIPHY_B ;
 int TRANSMITTER_UNIPHY_C ;
 int TRANSMITTER_UNIPHY_D ;
 int TRANSMITTER_UNIPHY_E ;
 int TRANSMITTER_UNIPHY_F ;
 int TRANSMITTER_UNIPHY_G ;
 int TRANSMITTER_UNKNOWN ;

__attribute__((used)) static enum transmitter translate_encoder_to_transmitter(
 struct graphics_object_id encoder)
{
 switch (encoder.id) {
 case 133:
  switch (encoder.enum_id) {
  case 129:
   return TRANSMITTER_UNIPHY_A;
  case 128:
   return TRANSMITTER_UNIPHY_B;
  default:
   return TRANSMITTER_UNKNOWN;
  }
 break;
 case 132:
  switch (encoder.enum_id) {
  case 129:
   return TRANSMITTER_UNIPHY_C;
  case 128:
   return TRANSMITTER_UNIPHY_D;
  default:
   return TRANSMITTER_UNKNOWN;
  }
 break;
 case 131:
  switch (encoder.enum_id) {
  case 129:
   return TRANSMITTER_UNIPHY_E;
  case 128:
   return TRANSMITTER_UNIPHY_F;
  default:
   return TRANSMITTER_UNKNOWN;
  }
 break;
 case 130:
  switch (encoder.enum_id) {
  case 129:
   return TRANSMITTER_UNIPHY_G;
  default:
   return TRANSMITTER_UNKNOWN;
  }
 break;
 case 135:
  switch (encoder.enum_id) {
  case 129:
   return TRANSMITTER_NUTMEG_CRT;
  default:
   return TRANSMITTER_UNKNOWN;
  }
 break;
 case 134:
  switch (encoder.enum_id) {
  case 129:
   return TRANSMITTER_TRAVIS_CRT;
  case 128:
   return TRANSMITTER_TRAVIS_LCD;
  default:
   return TRANSMITTER_UNKNOWN;
  }
 break;
 default:
  return TRANSMITTER_UNKNOWN;
 }
}
