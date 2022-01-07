
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_display_manager {int atomic_obj; int ddev; } ;


 int drm_atomic_private_obj_fini (int *) ;
 int drm_mode_config_cleanup (int ) ;

__attribute__((used)) static void amdgpu_dm_destroy_drm_device(struct amdgpu_display_manager *dm)
{
 drm_mode_config_cleanup(dm->ddev);
 drm_atomic_private_obj_fini(&dm->atomic_obj);
 return;
}
