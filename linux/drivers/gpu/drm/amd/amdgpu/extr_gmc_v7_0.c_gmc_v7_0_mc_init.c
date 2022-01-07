
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef unsigned long long u32 ;
struct TYPE_2__ {int vram_width; unsigned long long mc_vram_size; unsigned long long real_vram_size; int aper_base; unsigned long long aper_size; unsigned long long visible_vram_size; unsigned long long gart_size; } ;
struct amdgpu_device {int flags; int asic_type; TYPE_1__ gmc; int pdev; } ;


 int AMD_IS_APU ;
 int CHANSIZE ;






 int MC_ARB_RAMCFG ;
 int MC_SHARED_CHMAP ;
 int NOOFCHAN ;
 int REG_GET_FIELD (unsigned long long,int ,int ) ;
 unsigned long long RREG32 (int ) ;
 int amdgpu_atombios_get_vram_width (struct amdgpu_device*) ;
 int amdgpu_device_resize_fb_bar (struct amdgpu_device*) ;
 int amdgpu_gart_size ;
 int gmc_v7_0_vram_gtt_location (struct amdgpu_device*,TYPE_1__*) ;
 int mmCONFIG_MEMSIZE ;
 int mmMC_ARB_RAMCFG ;
 int mmMC_SHARED_CHMAP ;
 int mmMC_VM_FB_OFFSET ;
 unsigned long long pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

__attribute__((used)) static int gmc_v7_0_mc_init(struct amdgpu_device *adev)
{
 int r;

 adev->gmc.vram_width = amdgpu_atombios_get_vram_width(adev);
 if (!adev->gmc.vram_width) {
  u32 tmp;
  int chansize, numchan;


  tmp = RREG32(mmMC_ARB_RAMCFG);
  if (REG_GET_FIELD(tmp, MC_ARB_RAMCFG, CHANSIZE)) {
   chansize = 64;
  } else {
   chansize = 32;
  }
  tmp = RREG32(mmMC_SHARED_CHMAP);
  switch (REG_GET_FIELD(tmp, MC_SHARED_CHMAP, NOOFCHAN)) {
  case 0:
  default:
   numchan = 1;
   break;
  case 1:
   numchan = 2;
   break;
  case 2:
   numchan = 4;
   break;
  case 3:
   numchan = 8;
   break;
  case 4:
   numchan = 3;
   break;
  case 5:
   numchan = 6;
   break;
  case 6:
   numchan = 10;
   break;
  case 7:
   numchan = 12;
   break;
  case 8:
   numchan = 16;
   break;
  }
  adev->gmc.vram_width = numchan * chansize;
 }

 adev->gmc.mc_vram_size = RREG32(mmCONFIG_MEMSIZE) * 1024ULL * 1024ULL;
 adev->gmc.real_vram_size = RREG32(mmCONFIG_MEMSIZE) * 1024ULL * 1024ULL;

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
  case 128:
  default:
   adev->gmc.gart_size = 256ULL << 20;
   break;
  }
 } else {
  adev->gmc.gart_size = (u64)amdgpu_gart_size << 20;
 }

 gmc_v7_0_vram_gtt_location(adev, &adev->gmc);

 return 0;
}
