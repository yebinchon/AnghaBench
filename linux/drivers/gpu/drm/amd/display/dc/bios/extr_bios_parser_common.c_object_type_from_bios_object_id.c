
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;







 int OBJECT_TYPE_CONNECTOR ;
 int OBJECT_TYPE_ENCODER ;
 int OBJECT_TYPE_GENERIC ;
 int OBJECT_TYPE_GPU ;
 int OBJECT_TYPE_MASK ;
 int OBJECT_TYPE_ROUTER ;
 int OBJECT_TYPE_SHIFT ;
 int OBJECT_TYPE_UNKNOWN ;

__attribute__((used)) static enum object_type object_type_from_bios_object_id(uint32_t bios_object_id)
{
 uint32_t bios_object_type = (bios_object_id & OBJECT_TYPE_MASK)
    >> OBJECT_TYPE_SHIFT;
 enum object_type object_type;

 switch (bios_object_type) {
 case 129:
  object_type = OBJECT_TYPE_GPU;
  break;
 case 131:
  object_type = OBJECT_TYPE_ENCODER;
  break;
 case 132:
  object_type = OBJECT_TYPE_CONNECTOR;
  break;
 case 128:
  object_type = OBJECT_TYPE_ROUTER;
  break;
 case 130:
  object_type = OBJECT_TYPE_GENERIC;
  break;
 default:
  object_type = OBJECT_TYPE_UNKNOWN;
  break;
 }

 return object_type;
}
