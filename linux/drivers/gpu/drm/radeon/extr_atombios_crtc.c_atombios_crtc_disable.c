
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__** crtcs; } ;
struct radeon_device {int num_crtc; int family; TYPE_4__ mode_info; } ;
struct radeon_crtc {int crtc_id; int pll_id; int * connector; int * encoder; scalar_t__ adjusted_clock; scalar_t__ crtc_offset; } ;
struct radeon_bo {int dummy; } ;
struct radeon_atom_ss {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {TYPE_2__* primary; struct drm_device* dev; } ;
struct TYPE_7__ {int pll_id; scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_1__* fb; } ;
struct TYPE_5__ {int * obj; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;



 int ATOM_PPLL_INVALID ;
 scalar_t__ AVIVO_D1GRPH_ENABLE ;
 int CHIP_ARUBA ;
 int CHIP_BONAIRE ;
 int CHIP_HAWAII ;
 int CHIP_KAVERI ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_DPMS_OFF ;
 scalar_t__ EVERGREEN_GRPH_ENABLE ;
 int WREG32 (scalar_t__,int ) ;
 int atombios_crtc_dpms (struct drm_crtc*,int ) ;
 int atombios_crtc_program_pll (struct drm_crtc*,int,int,int ,int ,int ,int ,int ,int ,int ,int ,int,struct radeon_atom_ss*) ;
 int atombios_powergate_crtc (struct drm_crtc*,int ) ;
 struct radeon_bo* gem_to_radeon_bo (int ) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void atombios_crtc_disable(struct drm_crtc *crtc)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_atom_ss ss;
 int i;

 atombios_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);
 if (crtc->primary->fb) {
  int r;
  struct radeon_bo *rbo;

  rbo = gem_to_radeon_bo(crtc->primary->fb->obj[0]);
  r = radeon_bo_reserve(rbo, 0);
  if (unlikely(r))
   DRM_ERROR("failed to reserve rbo before unpin\n");
  else {
   radeon_bo_unpin(rbo);
   radeon_bo_unreserve(rbo);
  }
 }

 if (ASIC_IS_DCE4(rdev))
  WREG32(EVERGREEN_GRPH_ENABLE + radeon_crtc->crtc_offset, 0);
 else if (ASIC_IS_AVIVO(rdev))
  WREG32(AVIVO_D1GRPH_ENABLE + radeon_crtc->crtc_offset, 0);

 if (ASIC_IS_DCE6(rdev))
  atombios_powergate_crtc(crtc, ATOM_ENABLE);

 for (i = 0; i < rdev->num_crtc; i++) {
  if (rdev->mode_info.crtcs[i] &&
      rdev->mode_info.crtcs[i]->enabled &&
      i != radeon_crtc->crtc_id &&
      radeon_crtc->pll_id == rdev->mode_info.crtcs[i]->pll_id) {



   goto done;
  }
 }

 switch (radeon_crtc->pll_id) {
 case 129:
 case 128:

  atombios_crtc_program_pll(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
       0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, 0, &ss);
  break;
 case 130:

  if ((rdev->family == CHIP_ARUBA) ||
      (rdev->family == CHIP_KAVERI) ||
      (rdev->family == CHIP_BONAIRE) ||
      (rdev->family == CHIP_HAWAII))
   atombios_crtc_program_pll(crtc, radeon_crtc->crtc_id, radeon_crtc->pll_id,
        0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, 0, &ss);
  break;
 default:
  break;
 }
done:
 radeon_crtc->pll_id = ATOM_PPLL_INVALID;
 radeon_crtc->adjusted_clock = 0;
 radeon_crtc->encoder = ((void*)0);
 radeon_crtc->connector = ((void*)0);
}
