
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int vram_width; unsigned long long mc_vram_size; unsigned long long real_vram_size; unsigned long long aper_size; unsigned long long visible_vram_size; unsigned long long gart_size; int aper_base; } ;
struct amdgpu_device {int flags; int asic_type; TYPE_3__ gmc; int pdev; TYPE_2__* nbio_funcs; TYPE_1__* df_funcs; } ;
struct TYPE_5__ {unsigned long long (* get_memsize ) (struct amdgpu_device*) ;} ;
struct TYPE_4__ {int (* get_hbm_channel_number ) (struct amdgpu_device*) ;} ;


 int AMD_IS_APU ;






 int amdgpu_atomfirmware_get_vram_width (struct amdgpu_device*) ;
 int amdgpu_device_resize_fb_bar (struct amdgpu_device*) ;
 int amdgpu_emu_mode ;
 int amdgpu_gart_size ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfxhub_v1_0_get_mc_fb_offset (struct amdgpu_device*) ;
 int gmc_v9_0_vram_gtt_location (struct amdgpu_device*,TYPE_3__*) ;
 unsigned long long pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 int stub1 (struct amdgpu_device*) ;
 unsigned long long stub2 (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v9_0_mc_init(struct amdgpu_device *adev)
{
 int chansize, numchan;
 int r;

 if (amdgpu_sriov_vf(adev)) {




  adev->gmc.vram_width = 2048;
 } else if (amdgpu_emu_mode != 1) {
  adev->gmc.vram_width = amdgpu_atomfirmware_get_vram_width(adev);
 }

 if (!adev->gmc.vram_width) {

  if (adev->flags & AMD_IS_APU)
   chansize = 64;
  else
   chansize = 128;

  numchan = adev->df_funcs->get_hbm_channel_number(adev);
  adev->gmc.vram_width = numchan * chansize;
 }


 adev->gmc.mc_vram_size =
  adev->nbio_funcs->get_memsize(adev) * 1024ULL * 1024ULL;
 adev->gmc.real_vram_size = adev->gmc.mc_vram_size;

 if (!(adev->flags & AMD_IS_APU)) {
  r = amdgpu_device_resize_fb_bar(adev);
  if (r)
   return r;
 }
 adev->gmc.aper_base = pci_resource_start(adev->pdev, 0);
 adev->gmc.aper_size = pci_resource_len(adev->pdev, 0);
 adev->gmc.visible_vram_size = adev->gmc.aper_size;
 if (adev->gmc.visible_vram_size > adev->gmc.real_vram_size)
  adev->gmc.visible_vram_size = adev->gmc.real_vram_size;


 if (amdgpu_gart_size == -1) {
  switch (adev->asic_type) {
  case 130:
  case 129:
  case 128:
  case 133:
  default:
   adev->gmc.gart_size = 512ULL << 20;
   break;
  case 132:
  case 131:
   adev->gmc.gart_size = 1024ULL << 20;
   break;
  }
 } else {
  adev->gmc.gart_size = (u64)amdgpu_gart_size << 20;
 }

 gmc_v9_0_vram_gtt_location(adev, &adev->gmc);

 return 0;
}
