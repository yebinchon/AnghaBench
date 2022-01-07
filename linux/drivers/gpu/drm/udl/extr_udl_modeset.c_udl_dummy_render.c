
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *udl_dummy_render(char *wrptr)
{
 *wrptr++ = 0xAF;
 *wrptr++ = 0x6A;
 *wrptr++ = 0x00;
 *wrptr++ = 0x00;
 *wrptr++ = 0x00;
 *wrptr++ = 0x01;
 *wrptr++ = 0x00;
 *wrptr++ = 0x00;
 *wrptr++ = 0x00;
 return wrptr;
}
