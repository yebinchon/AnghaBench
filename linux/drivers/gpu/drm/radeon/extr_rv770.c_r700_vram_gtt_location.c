
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct radeon_mc {int mc_vram_size; int real_vram_size; scalar_t__ gtt_start; scalar_t__ mc_mask; scalar_t__ gtt_end; scalar_t__ vram_start; scalar_t__ vram_end; } ;
struct TYPE_2__ {scalar_t__ gtt_base_align; } ;
struct radeon_device {int flags; TYPE_1__ mc; int dev; } ;


 int RADEON_IS_AGP ;
 int dev_info (int ,char*,int,scalar_t__,scalar_t__,int) ;
 int dev_warn (int ,char*) ;
 int radeon_gtt_location (struct radeon_device*,struct radeon_mc*) ;
 int radeon_vram_location (struct radeon_device*,TYPE_1__*,int ) ;

void r700_vram_gtt_location(struct radeon_device *rdev, struct radeon_mc *mc)
{
 u64 size_bf, size_af;

 if (mc->mc_vram_size > 0xE0000000) {

  dev_warn(rdev->dev, "limiting VRAM\n");
  mc->real_vram_size = 0xE0000000;
  mc->mc_vram_size = 0xE0000000;
 }
 if (rdev->flags & RADEON_IS_AGP) {
  size_bf = mc->gtt_start;
  size_af = mc->mc_mask - mc->gtt_end;
  if (size_bf > size_af) {
   if (mc->mc_vram_size > size_bf) {
    dev_warn(rdev->dev, "limiting VRAM\n");
    mc->real_vram_size = size_bf;
    mc->mc_vram_size = size_bf;
   }
   mc->vram_start = mc->gtt_start - mc->mc_vram_size;
  } else {
   if (mc->mc_vram_size > size_af) {
    dev_warn(rdev->dev, "limiting VRAM\n");
    mc->real_vram_size = size_af;
    mc->mc_vram_size = size_af;
   }
   mc->vram_start = mc->gtt_end + 1;
  }
  mc->vram_end = mc->vram_start + mc->mc_vram_size - 1;
  dev_info(rdev->dev, "VRAM: %lluM 0x%08llX - 0x%08llX (%lluM used)\n",
    mc->mc_vram_size >> 20, mc->vram_start,
    mc->vram_end, mc->real_vram_size >> 20);
 } else {
  radeon_vram_location(rdev, &rdev->mc, 0);
  rdev->mc.gtt_base_align = 0;
  radeon_gtt_location(rdev, mc);
 }
}
