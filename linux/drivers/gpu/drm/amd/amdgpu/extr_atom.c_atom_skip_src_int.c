
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;
__attribute__((used)) static void atom_skip_src_int(atom_exec_context *ctx, uint8_t attr, int *ptr)
{
 uint32_t align = (attr >> 3) & 7, arg = attr & 7;
 switch (arg) {
 case 137:
 case 142:
  (*ptr) += 2;
  break;
 case 139:
 case 140:
 case 138:
 case 136:
 case 143:
  (*ptr)++;
  break;
 case 141:
  switch (align) {
  case 131:
   (*ptr) += 4;
   return;
  case 130:
  case 128:
  case 129:
   (*ptr) += 2;
   return;
  case 135:
  case 132:
  case 134:
  case 133:
   (*ptr)++;
   return;
  }
  return;
 }
}
