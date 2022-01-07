
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int height; } ;
struct TYPE_3__ {int lfb_linelength; int lfb_height; } ;


 unsigned long* efi_earlycon_map (int,int) ;
 int efi_earlycon_unmap (unsigned long*,int) ;
 TYPE_2__* font ;
 int memmove (unsigned long*,unsigned long*,int) ;
 TYPE_1__ screen_info ;

__attribute__((used)) static void efi_earlycon_scroll_up(void)
{
 unsigned long *dst, *src;
 u16 len;
 u32 i, height;

 len = screen_info.lfb_linelength;
 height = screen_info.lfb_height;

 for (i = 0; i < height - font->height; i++) {
  dst = efi_earlycon_map(i*len, len);
  if (!dst)
   return;

  src = efi_earlycon_map((i + font->height) * len, len);
  if (!src) {
   efi_earlycon_unmap(dst, len);
   return;
  }

  memmove(dst, src, len);

  efi_earlycon_unmap(src, len);
  efi_earlycon_unmap(dst, len);
 }
}
