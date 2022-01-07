
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct lg4ff_compat_mode_switch {int dummy; } ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext01_dfp ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext09_dfex ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext09_dfgt ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext09_dfp ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext09_g25 ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext09_g27 ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext09_g29 ;
 struct lg4ff_compat_mode_switch const lg4ff_mode_switch_ext16_g25 ;

__attribute__((used)) static const struct lg4ff_compat_mode_switch *lg4ff_get_mode_switch_command(const u16 real_product_id, const u16 target_product_id)
{
 switch (real_product_id) {
 case 132:
  switch (target_product_id) {
  case 132:
   return &lg4ff_mode_switch_ext01_dfp;

  default:
   return ((void*)0);
  }
  break;
 case 131:
  switch (target_product_id) {
  case 132:
   return &lg4ff_mode_switch_ext01_dfp;
  case 131:
   return &lg4ff_mode_switch_ext16_g25;

  default:
   return ((void*)0);
  }
  break;
 case 130:
  switch (target_product_id) {
  case 128:
   return &lg4ff_mode_switch_ext09_dfex;
  case 132:
   return &lg4ff_mode_switch_ext09_dfp;
  case 131:
   return &lg4ff_mode_switch_ext09_g25;
  case 130:
   return &lg4ff_mode_switch_ext09_g27;

  default:
   return ((void*)0);
  }
  break;
 case 129:
  switch (target_product_id) {
  case 132:
   return &lg4ff_mode_switch_ext09_dfp;
  case 133:
   return &lg4ff_mode_switch_ext09_dfgt;
  case 131:
   return &lg4ff_mode_switch_ext09_g25;
  case 130:
   return &lg4ff_mode_switch_ext09_g27;
  case 129:
   return &lg4ff_mode_switch_ext09_g29;

  default:
   return ((void*)0);
  }
  break;
 case 133:
  switch (target_product_id) {
  case 128:
   return &lg4ff_mode_switch_ext09_dfex;
  case 132:
   return &lg4ff_mode_switch_ext09_dfp;
  case 133:
   return &lg4ff_mode_switch_ext09_dfgt;

  default:
   return ((void*)0);
  }
  break;

 default:
  return ((void*)0);
 }
}
