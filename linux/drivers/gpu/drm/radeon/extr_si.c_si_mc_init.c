
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vram_is_ddr; int vram_width; int mc_vram_size; int real_vram_size; int aper_size; int visible_vram_size; int aper_base; } ;
struct radeon_device {TYPE_1__ mc; int pdev; } ;


 int CHANSIZE_MASK ;
 int CHANSIZE_OVERRIDE ;
 int CONFIG_MEMSIZE ;
 int DRM_INFO (char*,int) ;
 int MC_ARB_RAMCFG ;
 int MC_SHARED_CHMAP ;
 int NOOFCHAN_MASK ;
 int NOOFCHAN_SHIFT ;
 int RREG32 (int ) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;
 int radeon_update_bandwidth_info (struct radeon_device*) ;
 int si_vram_gtt_location (struct radeon_device*,TYPE_1__*) ;

__attribute__((used)) static int si_mc_init(struct radeon_device *rdev)
{
 u32 tmp;
 int chansize, numchan;


 rdev->mc.vram_is_ddr = 1;
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
 rdev->mc.vram_width = numchan * chansize;

 rdev->mc.aper_base = pci_resource_start(rdev->pdev, 0);
 rdev->mc.aper_size = pci_resource_len(rdev->pdev, 0);

 tmp = RREG32(CONFIG_MEMSIZE);

 if (tmp & 0xffff0000) {
  DRM_INFO("Probable bad vram size: 0x%08x\n", tmp);
  if (tmp & 0xffff)
   tmp &= 0xffff;
 }
 rdev->mc.mc_vram_size = tmp * 1024ULL * 1024ULL;
 rdev->mc.real_vram_size = rdev->mc.mc_vram_size;
 rdev->mc.visible_vram_size = rdev->mc.aper_size;
 si_vram_gtt_location(rdev, &rdev->mc);
 radeon_update_bandwidth_info(rdev);

 return 0;
}
