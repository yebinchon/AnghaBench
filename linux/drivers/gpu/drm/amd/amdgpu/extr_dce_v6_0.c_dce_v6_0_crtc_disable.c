
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {TYPE_2__* primary; struct drm_device* dev; } ;
struct TYPE_8__ {int num_crtc; TYPE_3__** crtcs; } ;
struct amdgpu_device {TYPE_4__ mode_info; } ;
struct amdgpu_crtc {int crtc_id; int pll_id; int * connector; int * encoder; scalar_t__ adjusted_clock; } ;
struct amdgpu_bo {int dummy; } ;
struct amdgpu_atom_ss {int dummy; } ;
struct TYPE_7__ {int pll_id; scalar_t__ enabled; } ;
struct TYPE_6__ {TYPE_1__* fb; } ;
struct TYPE_5__ {int * obj; } ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;


 int ATOM_PPLL_INVALID ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_DPMS_OFF ;
 int amdgpu_atombios_crtc_powergate (struct drm_crtc*,int ) ;
 int amdgpu_atombios_crtc_program_pll (struct drm_crtc*,int,int,int ,int ,int ,int ,int ,int ,int ,int ,int,struct amdgpu_atom_ss*) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int dce_v6_0_crtc_dpms (struct drm_crtc*,int ) ;
 int dce_v6_0_grph_enable (struct drm_crtc*,int) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (int ) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void dce_v6_0_crtc_disable(struct drm_crtc *crtc)
{

 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_atom_ss ss;
 int i;

 dce_v6_0_crtc_dpms(crtc, DRM_MODE_DPMS_OFF);
 if (crtc->primary->fb) {
  int r;
  struct amdgpu_bo *abo;

  abo = gem_to_amdgpu_bo(crtc->primary->fb->obj[0]);
  r = amdgpu_bo_reserve(abo, 1);
  if (unlikely(r))
   DRM_ERROR("failed to reserve abo before unpin\n");
  else {
   amdgpu_bo_unpin(abo);
   amdgpu_bo_unreserve(abo);
  }
 }

 dce_v6_0_grph_enable(crtc, 0);

 amdgpu_atombios_crtc_powergate(crtc, ATOM_ENABLE);

 for (i = 0; i < adev->mode_info.num_crtc; i++) {
  if (adev->mode_info.crtcs[i] &&
      adev->mode_info.crtcs[i]->enabled &&
      i != amdgpu_crtc->crtc_id &&
      amdgpu_crtc->pll_id == adev->mode_info.crtcs[i]->pll_id) {



   goto done;
  }
 }

 switch (amdgpu_crtc->pll_id) {
 case 129:
 case 128:

  amdgpu_atombios_crtc_program_pll(crtc, amdgpu_crtc->crtc_id, amdgpu_crtc->pll_id,
       0, 0, ATOM_DISABLE, 0, 0, 0, 0, 0, 0, &ss);
  break;
 default:
  break;
 }
done:
 amdgpu_crtc->pll_id = ATOM_PPLL_INVALID;
 amdgpu_crtc->adjusted_clock = 0;
 amdgpu_crtc->encoder = ((void*)0);
 amdgpu_crtc->connector = ((void*)0);
}
