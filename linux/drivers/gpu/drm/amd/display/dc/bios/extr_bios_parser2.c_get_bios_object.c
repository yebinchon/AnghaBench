
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct graphics_object_id {int type; int enum_id; int id; int member_0; } ;
struct TYPE_4__ {TYPE_1__* v1_4; } ;
struct bios_parser {TYPE_2__ object_info_tbl; } ;
struct atom_display_object_path_v2 {int display_objid; int encoderobjid; } ;
struct TYPE_3__ {unsigned int number_of_path; struct atom_display_object_path_v2* display_path; } ;





 struct graphics_object_id object_id_from_bios_object_id (int ) ;

__attribute__((used)) static struct atom_display_object_path_v2 *get_bios_object(
  struct bios_parser *bp,
  struct graphics_object_id id)
{
 unsigned int i;
 struct graphics_object_id obj_id = {0};

 switch (id.type) {
 case 129:
  for (i = 0; i < bp->object_info_tbl.v1_4->number_of_path; i++) {
   obj_id = object_id_from_bios_object_id(
     bp->object_info_tbl.v1_4->display_path[i].encoderobjid);
   if (id.type == obj_id.type && id.id == obj_id.id
     && id.enum_id == obj_id.enum_id)
    return &bp->object_info_tbl.v1_4->display_path[i];
  }

 case 130:
 case 128:



  for (i = 0; i < bp->object_info_tbl.v1_4->number_of_path; i++) {
   obj_id = object_id_from_bios_object_id(
     bp->object_info_tbl.v1_4->display_path[i].display_objid);
   if (id.type == obj_id.type && id.id == obj_id.id
     && id.enum_id == obj_id.enum_id)
    return &bp->object_info_tbl.v1_4->display_path[i];
  }

 default:
  return ((void*)0);
 }
}
