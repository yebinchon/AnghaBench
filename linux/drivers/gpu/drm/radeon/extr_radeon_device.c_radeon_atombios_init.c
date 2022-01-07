
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* atom_context; struct card_info* atom_card_info; } ;
struct radeon_device {TYPE_1__ mode_info; int ddev; int bios; scalar_t__ rio_mem; } ;
struct card_info {int pll_write; int pll_read; int mc_write; int mc_read; void* ioreg_write; void* ioreg_read; void* reg_write; void* reg_read; int dev; } ;
struct TYPE_5__ {int scratch_mutex; int mutex; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atom_allocate_fb_scratch (TYPE_2__*) ;
 TYPE_2__* atom_parse (struct card_info*,int ) ;
 void* cail_ioreg_read ;
 void* cail_ioreg_write ;
 int cail_mc_read ;
 int cail_mc_write ;
 int cail_pll_read ;
 int cail_pll_write ;
 void* cail_reg_read ;
 void* cail_reg_write ;
 struct card_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int radeon_atom_initialize_bios_scratch_regs (int ) ;
 int radeon_atombios_fini (struct radeon_device*) ;

int radeon_atombios_init(struct radeon_device *rdev)
{
 struct card_info *atom_card_info =
     kzalloc(sizeof(struct card_info), GFP_KERNEL);

 if (!atom_card_info)
  return -ENOMEM;

 rdev->mode_info.atom_card_info = atom_card_info;
 atom_card_info->dev = rdev->ddev;
 atom_card_info->reg_read = cail_reg_read;
 atom_card_info->reg_write = cail_reg_write;

 if (rdev->rio_mem) {
  atom_card_info->ioreg_read = cail_ioreg_read;
  atom_card_info->ioreg_write = cail_ioreg_write;
 } else {
  DRM_ERROR("Unable to find PCI I/O BAR; using MMIO for ATOM IIO\n");
  atom_card_info->ioreg_read = cail_reg_read;
  atom_card_info->ioreg_write = cail_reg_write;
 }
 atom_card_info->mc_read = cail_mc_read;
 atom_card_info->mc_write = cail_mc_write;
 atom_card_info->pll_read = cail_pll_read;
 atom_card_info->pll_write = cail_pll_write;

 rdev->mode_info.atom_context = atom_parse(atom_card_info, rdev->bios);
 if (!rdev->mode_info.atom_context) {
  radeon_atombios_fini(rdev);
  return -ENOMEM;
 }

 mutex_init(&rdev->mode_info.atom_context->mutex);
 mutex_init(&rdev->mode_info.atom_context->scratch_mutex);
 radeon_atom_initialize_bios_scratch_regs(rdev->ddev);
 atom_allocate_fb_scratch(rdev->mode_info.atom_context);
 return 0;
}
