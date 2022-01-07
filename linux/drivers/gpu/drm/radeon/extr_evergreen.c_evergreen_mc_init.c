
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vram_is_ddr; int vram_width; unsigned long long mc_vram_size; unsigned long long real_vram_size; int aper_size; int visible_vram_size; int aper_base; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ mc; int pdev; } ;


 int CHANSIZE_MASK ;
 int CHANSIZE_OVERRIDE ;
 scalar_t__ CHIP_PALM ;
 scalar_t__ CHIP_SUMO ;
 scalar_t__ CHIP_SUMO2 ;
 int CONFIG_MEMSIZE ;
 int FUS_MC_ARB_RAMCFG ;
 int MC_ARB_RAMCFG ;
 int MC_SHARED_CHMAP ;
 int NOOFCHAN_MASK ;
 int NOOFCHAN_SHIFT ;
 unsigned long long RREG32 (int ) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 int r700_vram_gtt_location (struct radeon_device*,TYPE_1__*) ;
 int radeon_update_bandwidth_info (struct radeon_device*) ;

int evergreen_mc_init(struct radeon_device *rdev)
{
 u32 tmp;
 int chansize, numchan;


 rdev->mc.vram_is_ddr = 1;
 if ((rdev->family == CHIP_PALM) ||
     (rdev->family == CHIP_SUMO) ||
     (rdev->family == CHIP_SUMO2))
  tmp = RREG32(FUS_MC_ARB_RAMCFG);
 else
  tmp = RREG32(MC_ARB_RAMCFG);
 if (tmp & CHANSIZE_OVERRIDE) {
  chansize = 16;
 } else if (tmp & CHANSIZE_MASK) {
  chansize = 64;
 } else {
  chansize = 32;
 }
 tmp = RREG32(MC_SHARED_CHMAP);
 switch ((tmp & NOOFCHAN_MASK) >> NOOFCHAN_SHIFT) {
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
 }
 rdev->mc.vram_width = numchan * chansize;

 rdev->mc.aper_base = pci_resource_start(rdev->pdev, 0);
 rdev->mc.aper_size = pci_resource_len(rdev->pdev, 0);

 if ((rdev->family == CHIP_PALM) ||
     (rdev->family == CHIP_SUMO) ||
     (rdev->family == CHIP_SUMO2)) {

  rdev->mc.mc_vram_size = RREG32(CONFIG_MEMSIZE);
  rdev->mc.real_vram_size = RREG32(CONFIG_MEMSIZE);
 } else {

  rdev->mc.mc_vram_size = RREG32(CONFIG_MEMSIZE) * 1024ULL * 1024ULL;
  rdev->mc.real_vram_size = RREG32(CONFIG_MEMSIZE) * 1024ULL * 1024ULL;
 }
 rdev->mc.visible_vram_size = rdev->mc.aper_size;
 r700_vram_gtt_location(rdev, &rdev->mc);
 radeon_update_bandwidth_info(rdev);

 return 0;
}
