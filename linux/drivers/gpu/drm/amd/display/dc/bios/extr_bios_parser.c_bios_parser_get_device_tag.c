
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct graphics_object_id {int dummy; } ;
struct dc_bios {int dummy; } ;
struct connector_device_tag_info {int dev_id; int acpi_device; } ;
struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_5__ {int usDeviceID; int ulACPIDeviceEnum; } ;
struct TYPE_4__ {size_t ucNumberOfDevice; TYPE_2__* asDeviceTag; } ;
typedef int ATOM_OBJECT ;
typedef TYPE_1__ ATOM_CONNECTOR_DEVICE_TAG_RECORD ;
typedef TYPE_2__ ATOM_CONNECTOR_DEVICE_TAG ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_NORECORD ;
 scalar_t__ BP_RESULT_OK ;
 int BREAK_TO_DEBUGGER () ;
 scalar_t__ bios_parser_get_device_tag_record (struct bios_parser*,int *,TYPE_1__**) ;
 int device_type_from_device_id (int ) ;
 int * get_bios_object (struct bios_parser*,struct graphics_object_id) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static enum bp_result bios_parser_get_device_tag(
 struct dc_bios *dcb,
 struct graphics_object_id connector_object_id,
 uint32_t device_tag_index,
 struct connector_device_tag_info *info)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 ATOM_OBJECT *object;
 ATOM_CONNECTOR_DEVICE_TAG_RECORD *record = ((void*)0);
 ATOM_CONNECTOR_DEVICE_TAG *device_tag;

 if (!info)
  return BP_RESULT_BADINPUT;


 object = get_bios_object(bp, connector_object_id);

 if (!object) {
  BREAK_TO_DEBUGGER();
  return BP_RESULT_BADINPUT;
 }

 if (bios_parser_get_device_tag_record(bp, object, &record)
  != BP_RESULT_OK)
  return BP_RESULT_NORECORD;

 if (device_tag_index >= record->ucNumberOfDevice)
  return BP_RESULT_NORECORD;

 device_tag = &record->asDeviceTag[device_tag_index];

 info->acpi_device = le32_to_cpu(device_tag->ulACPIDeviceEnum);
 info->dev_id =
  device_type_from_device_id(le16_to_cpu(device_tag->usDeviceID));

 return BP_RESULT_OK;
}
