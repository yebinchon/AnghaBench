
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lfb_base; int lfb_size; } ;


 int EFI_BOOT ;
 scalar_t__ __request_region (int ,scalar_t__,int,int ,int ) ;
 int __u32 ;
 scalar_t__ efi_enabled (int ) ;
 scalar_t__ fb_mmio ;
 int fb_mmio_name ;
 int hyperv_mmio ;
 int max_t (int ,int ,int) ;
 TYPE_1__ screen_info ;

__attribute__((used)) static void vmbus_reserve_fb(void)
{
 int size;







 if (screen_info.lfb_base) {
  if (efi_enabled(EFI_BOOT))
   size = max_t(__u32, screen_info.lfb_size, 0x800000);
  else
   size = max_t(__u32, screen_info.lfb_size, 0x4000000);

  for (; !fb_mmio && (size >= 0x100000); size >>= 1) {
   fb_mmio = __request_region(hyperv_mmio,
         screen_info.lfb_base, size,
         fb_mmio_name, 0);
  }
 }
}
