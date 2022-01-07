
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct object_info_table {TYPE_2__* v1_4; } ;
struct graphics_object_id {int type; int enum_id; int id; int member_0; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {struct object_info_table object_info_tbl; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;
struct TYPE_4__ {unsigned int number_of_path; TYPE_1__* display_path; } ;
struct TYPE_3__ {int encoderobjid; int display_objid; } ;


 struct bios_parser* BP_FROM_DCB (struct dc_bios*) ;
 int BP_RESULT_BADINPUT ;
 int BP_RESULT_OK ;


 struct graphics_object_id object_id_from_bios_object_id (int) ;

__attribute__((used)) static enum bp_result bios_parser_get_src_obj(struct dc_bios *dcb,
 struct graphics_object_id object_id, uint32_t index,
 struct graphics_object_id *src_object_id)
{
 struct bios_parser *bp = BP_FROM_DCB(dcb);
 unsigned int i;
 enum bp_result bp_result = BP_RESULT_BADINPUT;
 struct graphics_object_id obj_id = {0};
 struct object_info_table *tbl = &bp->object_info_tbl;

 if (!src_object_id)
  return bp_result;

 switch (object_id.type) {



 case 128:




  for (i = 0; i < tbl->v1_4->number_of_path; i++) {
   obj_id = object_id_from_bios_object_id(
   tbl->v1_4->display_path[i].encoderobjid);
   if (object_id.type == obj_id.type &&
     object_id.id == obj_id.id &&
      object_id.enum_id ==
       obj_id.enum_id) {
    *src_object_id =
    object_id_from_bios_object_id(0x1100);

   }
  }
  bp_result = BP_RESULT_OK;
  break;
 case 129:
  for (i = 0; i < tbl->v1_4->number_of_path; i++) {
   obj_id = object_id_from_bios_object_id(
    tbl->v1_4->display_path[i].display_objid);

   if (object_id.type == obj_id.type &&
    object_id.id == obj_id.id &&
     object_id.enum_id == obj_id.enum_id) {
    *src_object_id =
    object_id_from_bios_object_id(
    tbl->v1_4->display_path[i].encoderobjid);

   }
  }
  bp_result = BP_RESULT_OK;
  break;
 default:
  break;
 }

 return bp_result;
}
