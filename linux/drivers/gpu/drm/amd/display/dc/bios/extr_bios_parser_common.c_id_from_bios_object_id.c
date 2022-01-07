
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;






 int connector_id_from_bios_object_id (int ) ;
 int encoder_id_from_bios_object_id (int ) ;
 int generic_id_from_bios_object_id (int ) ;
 int gpu_id_from_bios_object_id (int ) ;

__attribute__((used)) static uint32_t id_from_bios_object_id(enum object_type type,
 uint32_t bios_object_id)
{
 switch (type) {
 case 128:
  return gpu_id_from_bios_object_id(bios_object_id);
 case 130:
  return (uint32_t)encoder_id_from_bios_object_id(bios_object_id);
 case 131:
  return (uint32_t)connector_id_from_bios_object_id(
    bios_object_id);
 case 129:
  return generic_id_from_bios_object_id(bios_object_id);
 default:
  return 0;
 }
}
