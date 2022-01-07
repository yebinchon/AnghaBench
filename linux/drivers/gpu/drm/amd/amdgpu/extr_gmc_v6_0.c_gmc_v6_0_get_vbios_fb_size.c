
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int real_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int D1VGA_CONTROL ;
 int D1VGA_MODE_ENABLE ;
 int REG_GET_FIELD (int ,int ,int ) ;
 int RREG32 (int ) ;
 int VIEWPORT_HEIGHT ;
 int VIEWPORT_SIZE ;
 int VIEWPORT_WIDTH ;
 int mmD1VGA_CONTROL ;
 int mmVIEWPORT_SIZE ;

__attribute__((used)) static unsigned gmc_v6_0_get_vbios_fb_size(struct amdgpu_device *adev)
{
 u32 d1vga_control = RREG32(mmD1VGA_CONTROL);
 unsigned size;

 if (REG_GET_FIELD(d1vga_control, D1VGA_CONTROL, D1VGA_MODE_ENABLE)) {
  size = 9 * 1024 * 1024;
 } else {
  u32 viewport = RREG32(mmVIEWPORT_SIZE);
  size = (REG_GET_FIELD(viewport, VIEWPORT_SIZE, VIEWPORT_HEIGHT) *
   REG_GET_FIELD(viewport, VIEWPORT_SIZE, VIEWPORT_WIDTH) *
   4);
 }

 if ((adev->gmc.real_vram_size - size) < (8 * 1024 * 1024))
  return 0;
 return size;
}
