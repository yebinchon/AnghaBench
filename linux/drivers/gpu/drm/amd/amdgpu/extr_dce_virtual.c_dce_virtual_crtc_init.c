
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct amdgpu_crtc** crtcs; } ;
struct amdgpu_device {TYPE_1__ mode_info; int ddev; } ;
struct amdgpu_crtc {int crtc_id; int base; int vsync_timer_enabled; int * connector; int * encoder; int pll_id; } ;


 int AMDGPUFB_CONN_LIMIT ;
 int AMDGPU_IRQ_STATE_DISABLE ;
 int ATOM_PPLL_INVALID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dce_virtual_crtc_funcs ;
 int dce_virtual_crtc_helper_funcs ;
 int drm_crtc_helper_add (int *,int *) ;
 int drm_crtc_init (int ,int *,int *) ;
 int drm_mode_crtc_set_gamma_size (int *,int) ;
 struct amdgpu_crtc* kzalloc (int,int ) ;

__attribute__((used)) static int dce_virtual_crtc_init(struct amdgpu_device *adev, int index)
{
 struct amdgpu_crtc *amdgpu_crtc;

 amdgpu_crtc = kzalloc(sizeof(struct amdgpu_crtc) +
         (AMDGPUFB_CONN_LIMIT * sizeof(struct drm_connector *)), GFP_KERNEL);
 if (amdgpu_crtc == ((void*)0))
  return -ENOMEM;

 drm_crtc_init(adev->ddev, &amdgpu_crtc->base, &dce_virtual_crtc_funcs);

 drm_mode_crtc_set_gamma_size(&amdgpu_crtc->base, 256);
 amdgpu_crtc->crtc_id = index;
 adev->mode_info.crtcs[index] = amdgpu_crtc;

 amdgpu_crtc->pll_id = ATOM_PPLL_INVALID;
 amdgpu_crtc->encoder = ((void*)0);
 amdgpu_crtc->connector = ((void*)0);
 amdgpu_crtc->vsync_timer_enabled = AMDGPU_IRQ_STATE_DISABLE;
 drm_crtc_helper_add(&amdgpu_crtc->base, &dce_virtual_crtc_helper_funcs);

 return 0;
}
