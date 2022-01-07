
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int num_crtc; int mode_config_initialized; } ;
struct TYPE_5__ {int aper_base; } ;
struct amdgpu_device {TYPE_3__ mode_info; TYPE_4__* ddev; TYPE_1__ gmc; int crtc_irq; } ;
struct TYPE_6__ {int max_width; int max_height; int preferred_depth; int prefer_shadow; int fb_base; int * funcs; } ;
struct TYPE_8__ {TYPE_2__ mode_config; scalar_t__ max_vblank_count; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int VISLANDS30_IV_SRCID_SMU_DISP_TIMER2_TRIGGER ;
 int amdgpu_display_modeset_create_props (struct amdgpu_device*) ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int ,int *) ;
 int amdgpu_mode_funcs ;
 int dce_virtual_connector_encoder_init (struct amdgpu_device*,int) ;
 int dce_virtual_crtc_init (struct amdgpu_device*,int) ;
 int drm_kms_helper_poll_init (TYPE_4__*) ;

__attribute__((used)) static int dce_virtual_sw_init(void *handle)
{
 int r, i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_SMU_DISP_TIMER2_TRIGGER, &adev->crtc_irq);
 if (r)
  return r;

 adev->ddev->max_vblank_count = 0;

 adev->ddev->mode_config.funcs = &amdgpu_mode_funcs;

 adev->ddev->mode_config.max_width = 16384;
 adev->ddev->mode_config.max_height = 16384;

 adev->ddev->mode_config.preferred_depth = 24;
 adev->ddev->mode_config.prefer_shadow = 1;

 adev->ddev->mode_config.fb_base = adev->gmc.aper_base;

 r = amdgpu_display_modeset_create_props(adev);
 if (r)
  return r;

 adev->ddev->mode_config.max_width = 16384;
 adev->ddev->mode_config.max_height = 16384;


 for (i = 0; i < adev->mode_info.num_crtc; i++) {
  r = dce_virtual_crtc_init(adev, i);
  if (r)
   return r;
  r = dce_virtual_connector_encoder_init(adev, i);
  if (r)
   return r;
 }

 drm_kms_helper_poll_init(adev->ddev);

 adev->mode_info.mode_config_initialized = 1;
 return 0;
}
