
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot_layout_info {int dummy; } ;
struct object_info_table {struct display_object_info_table_v1_4* v1_4; } ;
struct display_object_info_table_v1_4 {unsigned int number_of_path; TYPE_1__* display_path; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {struct object_info_table object_info_tbl; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_2__ {unsigned int display_objid; } ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_NORECORD ;
 int DC_LOG_DETECTION_EDID_PARSER (char*) ;
 int update_slot_layout_info (struct dc_bios*,unsigned int,struct slot_layout_info*) ;

__attribute__((used)) static enum bp_result get_bracket_layout_record(
 struct dc_bios *dcb,
 unsigned int bracket_layout_id,
 struct slot_layout_info *slot_layout_info)
{
 unsigned int i;
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 enum bp_result result;
 struct object_info_table *tbl;
 struct display_object_info_table_v1_4 *v1_4;

 if (slot_layout_info == ((void*)0)) {
  DC_LOG_DETECTION_EDID_PARSER("Invalid slot_layout_info\n");
  return BP_RESULT_BADINPUT;
 }
 tbl = &bp->object_info_tbl;
 v1_4 = tbl->v1_4;

 result = BP_RESULT_NORECORD;
 for (i = 0; i < v1_4->number_of_path; ++i) {

  if (bracket_layout_id ==
   v1_4->display_path[i].display_objid) {
   result = update_slot_layout_info(dcb, i,
    slot_layout_info);
   break;
  }
 }
 return result;
}
