
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
 int roundup_pow_of_two (scalar_t__) ;

__attribute__((used)) static u8 i40iw_derive_hw_ird_setting(u16 cm_ird)
{
 u8 encoded_ird_size;


 switch (cm_ird ? roundup_pow_of_two(cm_ird) : 0) {
 case 129:
  encoded_ird_size = 3;
  break;
 case 131:
 case 133:
  encoded_ird_size = 2;
  break;
 case 128:
 case 130:
  encoded_ird_size = 1;
  break;
 case 132:
 default:
  encoded_ird_size = 0;
  break;
 }
 return encoded_ird_size;
}
