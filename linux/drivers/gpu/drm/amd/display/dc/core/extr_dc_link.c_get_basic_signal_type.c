
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graphics_object_id {scalar_t__ type; int id; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
 scalar_t__ OBJECT_TYPE_CONNECTOR ;
 scalar_t__ OBJECT_TYPE_ENCODER ;
 int SIGNAL_TYPE_DISPLAY_PORT ;
 int SIGNAL_TYPE_DVI_DUAL_LINK ;
 int SIGNAL_TYPE_DVI_SINGLE_LINK ;
 int SIGNAL_TYPE_EDP ;
 int SIGNAL_TYPE_HDMI_TYPE_A ;
 int SIGNAL_TYPE_LVDS ;
 int SIGNAL_TYPE_NONE ;
 int SIGNAL_TYPE_RGB ;

__attribute__((used)) static enum signal_type get_basic_signal_type(
 struct graphics_object_id encoder,
 struct graphics_object_id downstream)
{
 if (downstream.type == OBJECT_TYPE_CONNECTOR) {
  switch (downstream.id) {
  case 135:
   switch (encoder.id) {
   case 131:
   case 129:
   case 130:
   case 128:
    return SIGNAL_TYPE_RGB;
   default:
    return SIGNAL_TYPE_DVI_SINGLE_LINK;
   }
  break;
  case 140:
  {
   switch (encoder.id) {
   case 131:
   case 129:
   case 130:
   case 128:
    return SIGNAL_TYPE_RGB;
   default:
    return SIGNAL_TYPE_DVI_DUAL_LINK;
   }
  }
  break;
  case 136:
   return SIGNAL_TYPE_DVI_SINGLE_LINK;
  case 141:
   return SIGNAL_TYPE_DVI_DUAL_LINK;
  case 134:
   return SIGNAL_TYPE_RGB;
  case 138:
   return SIGNAL_TYPE_HDMI_TYPE_A;
  case 137:
   return SIGNAL_TYPE_LVDS;
  case 142:
   return SIGNAL_TYPE_DISPLAY_PORT;
  case 139:
   return SIGNAL_TYPE_EDP;
  default:
   return SIGNAL_TYPE_NONE;
  }
 } else if (downstream.type == OBJECT_TYPE_ENCODER) {
  switch (downstream.id) {
  case 133:
  case 132:
   return SIGNAL_TYPE_DISPLAY_PORT;
  default:
   return SIGNAL_TYPE_NONE;
  }
 }

 return SIGNAL_TYPE_NONE;
}
