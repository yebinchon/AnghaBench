
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graphics_object_id {int type; int enum_id; int id; } ;


 int ENUM_ID_UNKNOWN ;




__attribute__((used)) static bool dal_graphics_object_id_is_valid(struct graphics_object_id id)
{
 bool rc = 1;

 switch (id.type) {
 case 128:
  rc = 0;
  break;
 case 129:
 case 130:

  if (id.enum_id == ENUM_ID_UNKNOWN)
   rc = 0;
  break;
 default:
  if (id.id == 0 || id.enum_id == ENUM_ID_UNKNOWN)
   rc = 0;
  break;
 }

 return rc;
}
