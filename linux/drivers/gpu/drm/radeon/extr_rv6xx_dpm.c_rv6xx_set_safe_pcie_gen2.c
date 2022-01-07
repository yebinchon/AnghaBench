
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
 int rv6xx_force_pcie_gen1 (struct radeon_device*) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv6xx_set_safe_pcie_gen2(struct radeon_device *rdev,
         struct radeon_ps *new_ps,
         struct radeon_ps *old_ps)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);
 struct rv6xx_ps *old_state = rv6xx_get_ps(old_ps);

 if ((new_state->low.flags & ATOM_PPLIB_R600_FLAGS_PCIEGEN2) !=
     (old_state->low.flags & ATOM_PPLIB_R600_FLAGS_PCIEGEN2))
  rv6xx_force_pcie_gen1(rdev);
}
