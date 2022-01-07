
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int MLX5_GET (int ,void const*,int ) ;
 int general_obj_in_cmd_hdr ;
 int opcode ;

__attribute__((used)) static bool devx_is_obj_query_cmd(const void *in)
{
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, in, opcode);

 switch (opcode) {
 case 146:
 case 144:
 case 152:
 case 139:
 case 135:
 case 138:
 case 137:
 case 133:
 case 132:
 case 140:
 case 148:
 case 149:
 case 147:
 case 150:
 case 143:
 case 136:
 case 145:
 case 141:
 case 134:
 case 131:
 case 151:
 case 130:
 case 129:
 case 128:
 case 142:
  return 1;
 default:
  return 0;
 }
}
