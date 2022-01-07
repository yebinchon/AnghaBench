
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int MLX5_GET (int ,void const*,int ) ;
 int general_obj_in_cmd_hdr ;
 int op_mod ;
 int opcode ;
 int set_fte_in ;

__attribute__((used)) static bool devx_is_obj_modify_cmd(const void *in)
{
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, in, opcode);

 switch (opcode) {
 case 144:
 case 146:
 case 143:
 case 139:
 case 142:
 case 141:
 case 138:
 case 137:
 case 145:
 case 140:
 case 152:
 case 130:
 case 134:
 case 147:
 case 133:
 case 132:
 case 128:
 case 154:
 case 153:
 case 149:
 case 150:
 case 151:
 case 148:
 case 129:
 case 135:
 case 136:
  return 1;
 case 131:
 {
  u16 op_mod = MLX5_GET(set_fte_in, in, op_mod);

  if (op_mod == 1)
   return 1;
  return 0;
 }
 default:
  return 0;
 }
}
