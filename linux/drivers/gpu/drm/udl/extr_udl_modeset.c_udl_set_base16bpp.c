
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char* udl_set_register (char*,int,int) ;

__attribute__((used)) static char *udl_set_base16bpp(char *wrptr, u32 base)
{

 wrptr = udl_set_register(wrptr, 0x20, base >> 16);
 wrptr = udl_set_register(wrptr, 0x21, base >> 8);
 return udl_set_register(wrptr, 0x22, base);
}
