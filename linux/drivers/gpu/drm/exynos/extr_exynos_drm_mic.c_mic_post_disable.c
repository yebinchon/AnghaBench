
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_mic {scalar_t__ enabled; int dev; } ;
struct drm_bridge {struct exynos_mic* driver_private; } ;


 int mic_mutex ;
 int mic_set_path (struct exynos_mic*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void mic_post_disable(struct drm_bridge *bridge)
{
 struct exynos_mic *mic = bridge->driver_private;

 mutex_lock(&mic_mutex);
 if (!mic->enabled)
  goto already_disabled;

 mic_set_path(mic, 0);

 pm_runtime_put(mic->dev);
 mic->enabled = 0;

already_disabled:
 mutex_unlock(&mic_mutex);
}
