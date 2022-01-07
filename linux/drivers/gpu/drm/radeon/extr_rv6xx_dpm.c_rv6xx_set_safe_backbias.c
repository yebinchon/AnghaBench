
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE ;
 int BACKBIAS_VALUE ;
 int GENERAL_PWRMGT ;
 int WREG32_P (int ,int ,int ) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv6xx_set_safe_backbias(struct radeon_device *rdev,
        struct radeon_ps *new_ps,
        struct radeon_ps *old_ps)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);
 struct rv6xx_ps *old_state = rv6xx_get_ps(old_ps);

 if ((new_state->low.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE) &&
     (old_state->low.flags & ATOM_PPLIB_R600_FLAGS_BACKBIASENABLE))
  WREG32_P(GENERAL_PWRMGT, BACKBIAS_VALUE, ~BACKBIAS_VALUE);
 else
  WREG32_P(GENERAL_PWRMGT, 0, ~BACKBIAS_VALUE);
}
