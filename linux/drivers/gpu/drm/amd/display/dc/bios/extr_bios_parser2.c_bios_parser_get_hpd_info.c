
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graphics_object_id {int dummy; } ;
struct graphics_object_hpd_info {int hpd_active; int hpd_int_gpio_uid; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
struct atom_hpd_int_record {int plugin_pin_state; int pin_id; } ;
struct atom_display_object_path_v2 {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_NORECORD ;
 int BP_RESULT_OK ;
 struct atom_display_object_path_v2* get_bios_object (struct bios_parser*,struct graphics_object_id) ;
 struct atom_hpd_int_record* get_hpd_record (struct bios_parser*,struct atom_display_object_path_v2*) ;

__attribute__((used)) static enum bp_result bios_parser_get_hpd_info(
 struct dc_bios *dcb,
 struct graphics_object_id id,
 struct graphics_object_hpd_info *info)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 struct atom_display_object_path_v2 *object;
 struct atom_hpd_int_record *record = ((void*)0);

 if (!info)
  return BP_RESULT_BADINPUT;

 object = get_bios_object(bp, id);

 if (!object)
  return BP_RESULT_BADINPUT;

 record = get_hpd_record(bp, object);

 if (record != ((void*)0)) {
  info->hpd_int_gpio_uid = record->pin_id;
  info->hpd_active = record->plugin_pin_state;
  return BP_RESULT_OK;
 }

 return BP_RESULT_NORECORD;
}
