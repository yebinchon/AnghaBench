
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum generic_id { ____Placeholder_generic_id } generic_id ;


 int GENERIC_ID_GLSYNC ;
 int GENERIC_ID_MXM_OPM ;
 int GENERIC_ID_STEREO ;
 int GENERIC_ID_UNKNOWN ;



 int gpu_id_from_bios_object_id (int) ;

__attribute__((used)) static enum generic_id generic_id_from_bios_object_id(uint32_t bios_object_id)
{
 uint32_t bios_generic_id = gpu_id_from_bios_object_id(bios_object_id);

 enum generic_id id;

 switch (bios_generic_id) {
 case 129:
  id = GENERIC_ID_MXM_OPM;
  break;
 case 130:
  id = GENERIC_ID_GLSYNC;
  break;
 case 128:
  id = GENERIC_ID_STEREO;
  break;
 default:
  id = GENERIC_ID_UNKNOWN;
  break;
 }

 return id;
}
