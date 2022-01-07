
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 int INSTR_CLIENT_SHIFT ;


 int STD_2D_OPCODE_SHIFT ;
 int STD_3D_OPCODE_SHIFT ;
 int STD_MI_OPCODE_SHIFT ;

__attribute__((used)) static inline u32 cmd_header_key(u32 x)
{
 switch (x >> INSTR_CLIENT_SHIFT) {
 default:
 case 129:
  return x >> STD_MI_OPCODE_SHIFT;
 case 128:
  return x >> STD_3D_OPCODE_SHIFT;
 case 130:
  return x >> STD_2D_OPCODE_SHIFT;
 }
}
