
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
 int MLX5_GET (int ,void const*,int*) ;
 int create_psv_in ;
 int general_obj_in_cmd_hdr ;
 int num_psv ;
 int op_mod ;
 int set_fte_in ;

__attribute__((used)) static bool devx_is_obj_create_cmd(const void *in, u16 *opcode)
{
 *opcode = MLX5_GET(general_obj_in_cmd_hdr, in, opcode);

 switch (*opcode) {
 case 143:
 case 142:
 case 147:
 case 152:
 case 150:
 case 139:
 case 135:
 case 138:
 case 137:
 case 133:
 case 132:
 case 151:
 case 144:
 case 145:
 case 155:
 case 153:
 case 154:
 case 136:
 case 156:
 case 128:
 case 140:
 case 134:
 case 131:
 case 146:
 case 130:
 case 148:
 case 149:
  return 1;
 case 129:
 {
  u16 op_mod = MLX5_GET(set_fte_in, in, op_mod);
  if (op_mod == 0)
   return 1;
  return 0;
 }
 case 141:
 {
  u8 num_psv = MLX5_GET(create_psv_in, in, num_psv);

  if (num_psv == 1)
   return 1;
  return 0;
 }
 default:
  return 0;
 }
}
