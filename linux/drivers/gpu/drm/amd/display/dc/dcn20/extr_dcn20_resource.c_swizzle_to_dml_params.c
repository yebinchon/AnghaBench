
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum swizzle_mode_values { ____Placeholder_swizzle_mode_values } swizzle_mode_values ;


 int ASSERT (int ) ;
 unsigned int dm_sw_4kb_d ;
 unsigned int dm_sw_4kb_d_x ;
 unsigned int dm_sw_4kb_s ;
 unsigned int dm_sw_4kb_s_x ;
 unsigned int dm_sw_64kb_d ;
 unsigned int dm_sw_64kb_d_t ;
 unsigned int dm_sw_64kb_d_x ;
 unsigned int dm_sw_64kb_r_x ;
 unsigned int dm_sw_64kb_s ;
 unsigned int dm_sw_64kb_s_t ;
 unsigned int dm_sw_64kb_s_x ;
 unsigned int dm_sw_linear ;
 unsigned int dm_sw_var_d ;
 unsigned int dm_sw_var_d_x ;
 unsigned int dm_sw_var_s ;
 unsigned int dm_sw_var_s_x ;

__attribute__((used)) static void swizzle_to_dml_params(
  enum swizzle_mode_values swizzle,
  unsigned int *sw_mode)
{
 switch (swizzle) {
 case 132:
  *sw_mode = dm_sw_linear;
  break;
 case 141:
  *sw_mode = dm_sw_4kb_s;
  break;
 case 140:
  *sw_mode = dm_sw_4kb_s_x;
  break;
 case 143:
  *sw_mode = dm_sw_4kb_d;
  break;
 case 142:
  *sw_mode = dm_sw_4kb_d_x;
  break;
 case 135:
  *sw_mode = dm_sw_64kb_s;
  break;
 case 133:
  *sw_mode = dm_sw_64kb_s_x;
  break;
 case 134:
  *sw_mode = dm_sw_64kb_s_t;
  break;
 case 139:
  *sw_mode = dm_sw_64kb_d;
  break;
 case 137:
  *sw_mode = dm_sw_64kb_d_x;
  break;
 case 138:
  *sw_mode = dm_sw_64kb_d_t;
  break;
 case 136:
  *sw_mode = dm_sw_64kb_r_x;
  break;
 case 129:
  *sw_mode = dm_sw_var_s;
  break;
 case 128:
  *sw_mode = dm_sw_var_s_x;
  break;
 case 131:
  *sw_mode = dm_sw_var_d;
  break;
 case 130:
  *sw_mode = dm_sw_var_d_x;
  break;

 default:
  ASSERT(0);
  break;
 }
}
