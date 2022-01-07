
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 unsigned int VGA_RSRC_LEGACY_IO ;
 unsigned int VGA_RSRC_LEGACY_MEM ;
 unsigned int VGA_RSRC_NORMAL_IO ;
 unsigned int VGA_RSRC_NORMAL_MEM ;
 int amdgpu_asic_set_vga_state (struct amdgpu_device*,int) ;

__attribute__((used)) static unsigned int amdgpu_device_vga_set_decode(void *cookie, bool state)
{
 struct amdgpu_device *adev = cookie;
 amdgpu_asic_set_vga_state(adev, state);
 if (state)
  return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
         VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 else
  return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
}
