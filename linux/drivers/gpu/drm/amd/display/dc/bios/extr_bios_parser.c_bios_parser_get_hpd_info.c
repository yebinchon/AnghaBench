
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct graphics_object_id {int dummy; } ;
struct graphics_object_hpd_info {int hpd_active; int hpd_int_gpio_uid; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_3__ {int ucPlugged_PinState; int ucHPDIntGPIOID; } ;
typedef int ATOM_OBJECT ;
typedef TYPE_1__ ATOM_HPD_INT_RECORD ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_NORECORD ;
 int BP_RESULT_OK ;
 int * get_bios_object (struct bios_parser*,struct graphics_object_id) ;
 TYPE_1__* get_hpd_record (struct bios_parser*,int *) ;

__attribute__((used)) static enum bp_result bios_parser_get_hpd_info(struct dc_bios *dcb,
 struct graphics_object_id id,
 struct graphics_object_hpd_info *info)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 ATOM_OBJECT *object;
 ATOM_HPD_INT_RECORD *record = ((void*)0);

 if (!info)
  return BP_RESULT_BADINPUT;

 object = get_bios_object(bp, id);

 if (!object)
  return BP_RESULT_BADINPUT;

 record = get_hpd_record(bp, object);

 if (record != ((void*)0)) {
  info->hpd_int_gpio_uid = record->ucHPDIntGPIOID;
  info->hpd_active = record->ucPlugged_PinState;
  return BP_RESULT_OK;
 }

 return BP_RESULT_NORECORD;
}
