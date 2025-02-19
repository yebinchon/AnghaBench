
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int num_crtc; int mode_config_initialized; } ;
struct TYPE_6__ {int aper_base; } ;
struct amdgpu_device {TYPE_3__ mode_info; TYPE_4__* ddev; TYPE_1__ gmc; int hpd_irq; int pageflip_irq; int crtc_irq; } ;
struct TYPE_7__ {int async_page_flip; int max_width; int max_height; int preferred_depth; int prefer_shadow; int fb_base; int * funcs; } ;
struct TYPE_9__ {TYPE_2__ mode_config; } ;


 int AMDGPU_IRQ_CLIENTID_LEGACY ;
 int EINVAL ;
 int VISLANDS30_IV_SRCID_D1_GRPH_PFLIP ;
 int VISLANDS30_IV_SRCID_HOTPLUG_DETECT_A ;
 scalar_t__ amdgpu_atombios_get_connector_info_from_object_table (struct amdgpu_device*) ;
 int amdgpu_display_modeset_create_props (struct amdgpu_device*) ;
 int amdgpu_display_print_display_setup (TYPE_4__*) ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_mode_funcs ;
 int dce_v10_0_afmt_init (struct amdgpu_device*) ;
 int dce_v10_0_audio_init (struct amdgpu_device*) ;
 int dce_v10_0_crtc_init (struct amdgpu_device*,int) ;
 int drm_kms_helper_poll_init (TYPE_4__*) ;

__attribute__((used)) static int dce_v10_0_sw_init(void *handle)
{
 int r, i;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (i = 0; i < adev->mode_info.num_crtc; i++) {
  r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, i + 1, &adev->crtc_irq);
  if (r)
   return r;
 }

 for (i = VISLANDS30_IV_SRCID_D1_GRPH_PFLIP; i < 20; i += 2) {
  r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, i, &adev->pageflip_irq);
  if (r)
   return r;
 }


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, VISLANDS30_IV_SRCID_HOTPLUG_DETECT_A, &adev->hpd_irq);
 if (r)
  return r;

 adev->ddev->mode_config.funcs = &amdgpu_mode_funcs;

 adev->ddev->mode_config.async_page_flip = 1;

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
  r = dce_v10_0_crtc_init(adev, i);
  if (r)
   return r;
 }

 if (amdgpu_atombios_get_connector_info_from_object_table(adev))
  amdgpu_display_print_display_setup(adev->ddev);
 else
  return -EINVAL;


 r = dce_v10_0_afmt_init(adev);
 if (r)
  return r;

 r = dce_v10_0_audio_init(adev);
 if (r)
  return r;

 drm_kms_helper_poll_init(adev->ddev);

 adev->mode_info.mode_config_initialized = 1;
 return 0;
}
