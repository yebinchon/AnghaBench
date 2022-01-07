
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int ATOM_PPLIB_R600_FLAGS_PCIEGEN2 ;
 int r600_enable_dynamic_pcie_gen2 (struct radeon_device*,int) ;
 int rv6xx_enable_bif_dynamic_pcie_gen2 (struct radeon_device*,int) ;
 int rv6xx_enable_pcie_gen2_support (struct radeon_device*) ;
 int rv6xx_force_pcie_gen1 (struct radeon_device*) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv6xx_enable_dynamic_pcie_gen2(struct radeon_device *rdev,
        struct radeon_ps *new_ps,
        bool enable)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);

 if (enable) {
  rv6xx_enable_bif_dynamic_pcie_gen2(rdev, 1);
  rv6xx_enable_pcie_gen2_support(rdev);
  r600_enable_dynamic_pcie_gen2(rdev, 1);
 } else {
  if (!(new_state->low.flags & ATOM_PPLIB_R600_FLAGS_PCIEGEN2))
   rv6xx_force_pcie_gen1(rdev);
  rv6xx_enable_bif_dynamic_pcie_gen2(rdev, 0);
  r600_enable_dynamic_pcie_gen2(rdev, 0);
 }
}
