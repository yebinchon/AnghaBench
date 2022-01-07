
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;
 int U16 (int) ;
 int U32 (int) ;
 int U8 (int) ;

__attribute__((used)) static uint32_t atom_get_src_direct(atom_exec_context *ctx, uint8_t align, int *ptr)
{
 uint32_t val = 0xCDCDCDCD;

 switch (align) {
 case 131:
  val = U32(*ptr);
  (*ptr) += 4;
  break;
 case 130:
 case 128:
 case 129:
  val = U16(*ptr);
  (*ptr) += 2;
  break;
 case 135:
 case 132:
 case 134:
 case 133:
  val = U8(*ptr);
  (*ptr)++;
  break;
 }
 return val;
}
