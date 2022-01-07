
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
struct radeon_mc {int vram_start; int mc_vram_size; int real_vram_size; int aper_size; scalar_t__ vram_end; scalar_t__ gtt_start; scalar_t__ gtt_end; } ;
struct TYPE_2__ {int mc_mask; } ;
struct radeon_device {int flags; int dev; TYPE_1__ mc; } ;


 int RADEON_IS_AGP ;
 int dev_info (int ,char*,int,scalar_t__,scalar_t__,int) ;
 int dev_warn (int ,char*) ;
 scalar_t__ radeon_vram_limit ;

void radeon_vram_location(struct radeon_device *rdev, struct radeon_mc *mc, u64 base)
{
 uint64_t limit = (uint64_t)radeon_vram_limit << 20;

 mc->vram_start = base;
 if (mc->mc_vram_size > (rdev->mc.mc_mask - base + 1)) {
  dev_warn(rdev->dev, "limiting VRAM to PCI aperture size\n");
  mc->real_vram_size = mc->aper_size;
  mc->mc_vram_size = mc->aper_size;
 }
 mc->vram_end = mc->vram_start + mc->mc_vram_size - 1;
 if (rdev->flags & RADEON_IS_AGP && mc->vram_end > mc->gtt_start && mc->vram_start <= mc->gtt_end) {
  dev_warn(rdev->dev, "limiting VRAM to PCI aperture size\n");
  mc->real_vram_size = mc->aper_size;
  mc->mc_vram_size = mc->aper_size;
 }
 mc->vram_end = mc->vram_start + mc->mc_vram_size - 1;
 if (limit && limit < mc->real_vram_size)
  mc->real_vram_size = limit;
 dev_info(rdev->dev, "VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\n",
   mc->mc_vram_size >> 20, mc->vram_start,
   mc->vram_end, mc->real_vram_size >> 20);
}
