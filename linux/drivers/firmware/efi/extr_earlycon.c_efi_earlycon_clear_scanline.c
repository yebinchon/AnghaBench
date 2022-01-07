
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u16 ;
struct TYPE_2__ {unsigned int lfb_linelength; } ;


 unsigned long* efi_earlycon_map (unsigned int,unsigned int) ;
 int efi_earlycon_unmap (unsigned long*,unsigned int) ;
 int memset (unsigned long*,int ,unsigned int) ;
 TYPE_1__ screen_info ;

__attribute__((used)) static void efi_earlycon_clear_scanline(unsigned int y)
{
 unsigned long *dst;
 u16 len;

 len = screen_info.lfb_linelength;
 dst = efi_earlycon_map(y*len, len);
 if (!dst)
  return;

 memset(dst, 0, len);
 efi_earlycon_unmap(dst, len);
}
