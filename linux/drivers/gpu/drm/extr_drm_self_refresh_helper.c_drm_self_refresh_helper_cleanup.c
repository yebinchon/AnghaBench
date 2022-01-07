
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_self_refresh_data {int entry_work; } ;
struct drm_crtc {struct drm_self_refresh_data* self_refresh_data; } ;


 int cancel_delayed_work_sync (int *) ;
 int kfree (struct drm_self_refresh_data*) ;

void drm_self_refresh_helper_cleanup(struct drm_crtc *crtc)
{
 struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;


 if (!sr_data)
  return;

 crtc->self_refresh_data = ((void*)0);

 cancel_delayed_work_sync(&sr_data->entry_work);
 kfree(sr_data);
}
