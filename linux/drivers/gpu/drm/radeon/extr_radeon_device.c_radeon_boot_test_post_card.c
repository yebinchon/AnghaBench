
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int atom_context; } ;
struct radeon_device {int dev; int ddev; TYPE_1__ mode_info; scalar_t__ is_atom_bios; scalar_t__ bios; } ;


 int DRM_INFO (char*) ;
 int atom_asic_init (int ) ;
 int dev_err (int ,char*) ;
 scalar_t__ radeon_card_posted (struct radeon_device*) ;
 int radeon_combios_asic_init (int ) ;

bool radeon_boot_test_post_card(struct radeon_device *rdev)
{
 if (radeon_card_posted(rdev))
  return 1;

 if (rdev->bios) {
  DRM_INFO("GPU not posted. posting now...\n");
  if (rdev->is_atom_bios)
   atom_asic_init(rdev->mode_info.atom_context);
  else
   radeon_combios_asic_init(rdev->ddev);
  return 1;
 } else {
  dev_err(rdev->dev, "Card not posted and no BIOS - ignoring\n");
  return 0;
 }
}
