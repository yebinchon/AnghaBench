
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum connector_id { ____Placeholder_connector_id } connector_id ;


 int CONNECTOR_ID_DISPLAY_PORT ;
 int CONNECTOR_ID_DUAL_LINK_DVID ;
 int CONNECTOR_ID_DUAL_LINK_DVII ;
 int CONNECTOR_ID_EDP ;
 int CONNECTOR_ID_HARDCODE_DVI ;
 int CONNECTOR_ID_HDMI_TYPE_A ;
 int CONNECTOR_ID_LVDS ;
 int CONNECTOR_ID_MXM ;
 int CONNECTOR_ID_PCIE ;
 int CONNECTOR_ID_SINGLE_LINK_DVID ;
 int CONNECTOR_ID_SINGLE_LINK_DVII ;
 int CONNECTOR_ID_UNKNOWN ;
 int CONNECTOR_ID_VGA ;
 int gpu_id_from_bios_object_id (int) ;

__attribute__((used)) static enum connector_id connector_id_from_bios_object_id(
 uint32_t bios_object_id)
{
 uint32_t bios_connector_id = gpu_id_from_bios_object_id(bios_object_id);

 enum connector_id id;

 switch (bios_connector_id) {
 case 130:
  id = CONNECTOR_ID_SINGLE_LINK_DVII;
  break;
 case 137:
  id = CONNECTOR_ID_DUAL_LINK_DVII;
  break;
 case 131:
  id = CONNECTOR_ID_SINGLE_LINK_DVID;
  break;
 case 138:
  id = CONNECTOR_ID_DUAL_LINK_DVID;
  break;
 case 129:
  id = CONNECTOR_ID_VGA;
  break;
 case 135:
  id = CONNECTOR_ID_HDMI_TYPE_A;
  break;
 case 134:
  id = CONNECTOR_ID_LVDS;
  break;
 case 132:
  id = CONNECTOR_ID_PCIE;
  break;
 case 136:
  id = CONNECTOR_ID_HARDCODE_DVI;
  break;
 case 139:
  id = CONNECTOR_ID_DISPLAY_PORT;
  break;
 case 128:
  id = CONNECTOR_ID_EDP;
  break;
 case 133:
  id = CONNECTOR_ID_MXM;
  break;
 default:
  id = CONNECTOR_ID_UNKNOWN;
  break;
 }

 return id;
}
