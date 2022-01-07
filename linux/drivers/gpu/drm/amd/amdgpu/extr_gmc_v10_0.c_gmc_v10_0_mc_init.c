
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int vram_width; unsigned long long aper_size; unsigned long long mc_vram_size; unsigned long long real_vram_size; unsigned long long visible_vram_size; unsigned long long gart_size; int aper_base; } ;
struct amdgpu_device {int asic_type; TYPE_2__ gmc; TYPE_1__* nbio_funcs; int pdev; } ;
struct TYPE_3__ {unsigned long long (* get_memsize ) (struct amdgpu_device*) ;} ;





 int amdgpu_atomfirmware_get_vram_width (struct amdgpu_device*) ;
 int amdgpu_emu_mode ;
 int amdgpu_gart_size ;
 int gmc_v10_0_vram_gtt_location (struct amdgpu_device*,TYPE_2__*) ;
 unsigned long long pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 unsigned long long stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v10_0_mc_init(struct amdgpu_device *adev)
{
 int chansize, numchan;

 if (!amdgpu_emu_mode)
  adev->gmc.vram_width = amdgpu_atomfirmware_get_vram_width(adev);
 else {

  chansize = 128;
  numchan = 1;
  adev->gmc.vram_width = numchan * chansize;
 }


 adev->gmc.aper_base = pci_resource_start(adev->pdev, 0);
 adev->gmc.aper_size = pci_resource_len(adev->pdev, 0);


 adev->gmc.mc_vram_size =
  adev->nbio_funcs->get_memsize(adev) * 1024ULL * 1024ULL;
 adev->gmc.real_vram_size = adev->gmc.mc_vram_size;
 adev->gmc.visible_vram_size = adev->gmc.aper_size;


 if (adev->gmc.visible_vram_size > adev->gmc.real_vram_size)
  adev->gmc.visible_vram_size = adev->gmc.real_vram_size;


 if (amdgpu_gart_size == -1) {
  switch (adev->asic_type) {
  case 130:
  case 128:
  case 129:
  default:
   adev->gmc.gart_size = 512ULL << 20;
   break;
  }
 } else
  adev->gmc.gart_size = (u64)amdgpu_gart_size << 20;

 gmc_v10_0_vram_gtt_location(adev, &adev->gmc);

 return 0;
}
