
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum object_enum_id { ____Placeholder_object_enum_id } object_enum_id ;


 int ENUM_ID_1 ;
 int ENUM_ID_2 ;
 int ENUM_ID_3 ;
 int ENUM_ID_4 ;
 int ENUM_ID_5 ;
 int ENUM_ID_6 ;
 int ENUM_ID_7 ;
 int ENUM_ID_MASK ;
 int ENUM_ID_SHIFT ;
 int ENUM_ID_UNKNOWN ;
__attribute__((used)) static enum object_enum_id enum_id_from_bios_object_id(uint32_t bios_object_id)
{
 uint32_t bios_enum_id =
   (bios_object_id & ENUM_ID_MASK) >> ENUM_ID_SHIFT;
 enum object_enum_id id;

 switch (bios_enum_id) {
 case 134:
  id = ENUM_ID_1;
  break;
 case 133:
  id = ENUM_ID_2;
  break;
 case 132:
  id = ENUM_ID_3;
  break;
 case 131:
  id = ENUM_ID_4;
  break;
 case 130:
  id = ENUM_ID_5;
  break;
 case 129:
  id = ENUM_ID_6;
  break;
 case 128:
  id = ENUM_ID_7;
  break;
 default:
  id = ENUM_ID_UNKNOWN;
  break;
 }

 return id;
}
