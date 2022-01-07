
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRM_ERROR (char*) ;

u32 rv740_get_decoded_reference_divider(u32 encoded_ref)
{
 u32 ref = 0;

 switch (encoded_ref) {
 case 0:
  ref = 1;
  break;
 case 16:
  ref = 2;
  break;
 case 17:
  ref = 3;
  break;
 case 18:
  ref = 2;
  break;
 case 19:
  ref = 3;
  break;
 case 20:
  ref = 4;
  break;
 case 21:
  ref = 5;
  break;
 default:
  DRM_ERROR("Invalid encoded Reference Divider\n");
  ref = 0;
  break;
 }

 return ref;
}
