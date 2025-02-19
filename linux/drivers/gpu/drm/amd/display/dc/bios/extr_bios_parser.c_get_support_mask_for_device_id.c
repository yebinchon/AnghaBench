
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct device_id {int device_type; int enum_id; } ;
typedef enum dal_device_type { ____Placeholder_dal_device_type } dal_device_type ;


 int ATOM_DEVICE_CRT1_SUPPORT ;
 int ATOM_DEVICE_CRT2_SUPPORT ;
 int ATOM_DEVICE_CV_SUPPORT ;
 int ATOM_DEVICE_DFP1_SUPPORT ;
 int ATOM_DEVICE_DFP2_SUPPORT ;
 int ATOM_DEVICE_DFP3_SUPPORT ;
 int ATOM_DEVICE_DFP4_SUPPORT ;
 int ATOM_DEVICE_DFP5_SUPPORT ;
 int ATOM_DEVICE_DFP6_SUPPORT ;
 int ATOM_DEVICE_LCD1_SUPPORT ;
 int ATOM_DEVICE_LCD2_SUPPORT ;
 int ATOM_DEVICE_TV1_SUPPORT ;






__attribute__((used)) static uint32_t get_support_mask_for_device_id(struct device_id device_id)
{
 enum dal_device_type device_type = device_id.device_type;
 uint32_t enum_id = device_id.enum_id;

 switch (device_type) {
 case 129:
  switch (enum_id) {
  case 1:
   return ATOM_DEVICE_LCD1_SUPPORT;
  case 2:
   return ATOM_DEVICE_LCD2_SUPPORT;
  default:
   break;
  }
  break;
 case 132:
  switch (enum_id) {
  case 1:
   return ATOM_DEVICE_CRT1_SUPPORT;
  case 2:
   return ATOM_DEVICE_CRT2_SUPPORT;
  default:
   break;
  }
  break;
 case 130:
  switch (enum_id) {
  case 1:
   return ATOM_DEVICE_DFP1_SUPPORT;
  case 2:
   return ATOM_DEVICE_DFP2_SUPPORT;
  case 3:
   return ATOM_DEVICE_DFP3_SUPPORT;
  case 4:
   return ATOM_DEVICE_DFP4_SUPPORT;
  case 5:
   return ATOM_DEVICE_DFP5_SUPPORT;
  case 6:
   return ATOM_DEVICE_DFP6_SUPPORT;
  default:
   break;
  }
  break;
 case 131:
  switch (enum_id) {
  case 1:
   return ATOM_DEVICE_CV_SUPPORT;
  default:
   break;
  }
  break;
 case 128:
  switch (enum_id) {
  case 1:
   return ATOM_DEVICE_TV1_SUPPORT;
  default:
   break;
  }
  break;
 default:
  break;
 };


 return 0;
}
