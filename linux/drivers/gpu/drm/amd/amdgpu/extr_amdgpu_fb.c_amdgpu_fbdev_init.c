
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct amdgpu_fbdev {int helper; struct amdgpu_device* adev; } ;
struct TYPE_9__ {struct amdgpu_fbdev* rfbdev; int mode_config_initialized; } ;
struct TYPE_8__ {int real_vram_size; } ;
struct amdgpu_device {TYPE_4__* ddev; TYPE_3__ mode_info; TYPE_2__ gmc; } ;
struct TYPE_7__ {int connector_list; } ;
struct TYPE_10__ {TYPE_1__ mode_config; } ;


 int AMDGPUFB_CONN_LIMIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_fb_helper_funcs ;
 int drm_fb_helper_init (TYPE_4__*,int *,int ) ;
 int drm_fb_helper_initial_config (int *,int) ;
 int drm_fb_helper_prepare (TYPE_4__*,int *,int *) ;
 int drm_fb_helper_single_add_all_connectors (int *) ;
 int drm_helper_disable_unused_functions (TYPE_4__*) ;
 int kfree (struct amdgpu_fbdev*) ;
 struct amdgpu_fbdev* kzalloc (int,int ) ;
 scalar_t__ list_empty (int *) ;

int amdgpu_fbdev_init(struct amdgpu_device *adev)
{
 struct amdgpu_fbdev *rfbdev;
 int bpp_sel = 32;
 int ret;


 if (!adev->mode_info.mode_config_initialized)
  return 0;


 if (list_empty(&adev->ddev->mode_config.connector_list))
  return 0;


 if (adev->gmc.real_vram_size <= (32*1024*1024))
  bpp_sel = 8;

 rfbdev = kzalloc(sizeof(struct amdgpu_fbdev), GFP_KERNEL);
 if (!rfbdev)
  return -ENOMEM;

 rfbdev->adev = adev;
 adev->mode_info.rfbdev = rfbdev;

 drm_fb_helper_prepare(adev->ddev, &rfbdev->helper,
   &amdgpu_fb_helper_funcs);

 ret = drm_fb_helper_init(adev->ddev, &rfbdev->helper,
     AMDGPUFB_CONN_LIMIT);
 if (ret) {
  kfree(rfbdev);
  return ret;
 }

 drm_fb_helper_single_add_all_connectors(&rfbdev->helper);


 if (!amdgpu_device_has_dc_support(adev))
  drm_helper_disable_unused_functions(adev->ddev);

 drm_fb_helper_initial_config(&rfbdev->helper, bpp_sel);
 return 0;
}
