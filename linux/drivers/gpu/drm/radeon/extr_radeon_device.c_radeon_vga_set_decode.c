
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 unsigned int VGA_RSRC_LEGACY_IO ;
 unsigned int VGA_RSRC_LEGACY_MEM ;
 unsigned int VGA_RSRC_NORMAL_IO ;
 unsigned int VGA_RSRC_NORMAL_MEM ;
 int radeon_vga_set_state (struct radeon_device*,int) ;

__attribute__((used)) static unsigned int radeon_vga_set_decode(void *cookie, bool state)
{
 struct radeon_device *rdev = cookie;
 radeon_vga_set_state(rdev, state);
 if (state)
  return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
         VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 else
  return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
}
