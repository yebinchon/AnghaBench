
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int efi_utf8_bytes(u16 c)
{
 return 1 + (c >= 0x80) + (c >= 0x800);
}
