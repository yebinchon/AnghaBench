
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct analogix_dp_device {int panel_is_modeset; int panel_lock; TYPE_1__* plat_data; } ;
struct TYPE_2__ {int panel; } ;


 int drm_panel_prepare (int ) ;
 int drm_panel_unprepare (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int analogix_dp_prepare_panel(struct analogix_dp_device *dp,
         bool prepare, bool is_modeset_prepare)
{
 int ret = 0;

 if (!dp->plat_data->panel)
  return 0;

 mutex_lock(&dp->panel_lock);





 if (dp->panel_is_modeset && !is_modeset_prepare)
  goto out;

 if (prepare)
  ret = drm_panel_prepare(dp->plat_data->panel);
 else
  ret = drm_panel_unprepare(dp->plat_data->panel);

 if (ret)
  goto out;

 if (is_modeset_prepare)
  dp->panel_is_modeset = prepare;

out:
 mutex_unlock(&dp->panel_lock);
 return ret;
}
