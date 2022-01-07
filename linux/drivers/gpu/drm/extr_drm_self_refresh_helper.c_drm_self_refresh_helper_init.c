
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_self_refresh_data {int exit_avg_ms; int entry_avg_ms; int avg_mutex; struct drm_crtc* crtc; int entry_work; } ;
struct drm_crtc {struct drm_self_refresh_data* self_refresh_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int SELF_REFRESH_AVG_SEED_MS ;
 scalar_t__ WARN_ON (struct drm_self_refresh_data*) ;
 int drm_self_refresh_helper_entry_work ;
 int ewma_psr_time_add (int *,int ) ;
 int ewma_psr_time_init (int *) ;
 struct drm_self_refresh_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int drm_self_refresh_helper_init(struct drm_crtc *crtc)
{
 struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;


 if (WARN_ON(sr_data))
  return -EINVAL;

 sr_data = kzalloc(sizeof(*sr_data), GFP_KERNEL);
 if (!sr_data)
  return -ENOMEM;

 INIT_DELAYED_WORK(&sr_data->entry_work,
     drm_self_refresh_helper_entry_work);
 sr_data->crtc = crtc;
 mutex_init(&sr_data->avg_mutex);
 ewma_psr_time_init(&sr_data->entry_avg_ms);
 ewma_psr_time_init(&sr_data->exit_avg_ms);






 ewma_psr_time_add(&sr_data->entry_avg_ms, SELF_REFRESH_AVG_SEED_MS);
 ewma_psr_time_add(&sr_data->exit_avg_ms, SELF_REFRESH_AVG_SEED_MS);

 crtc->self_refresh_data = sr_data;
 return 0;
}
