
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;





 int MLX5_GET (int ,void*,int ) ;
 int general_obj_in_cmd_hdr ;
 int opcode ;

__attribute__((used)) static bool devx_is_whitelist_cmd(void *in)
{
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, in, opcode);

 switch (opcode) {
 case 129:
 case 128:
 case 130:
  return 1;
 default:
  return 0;
 }
}
