
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct exynos_mic {int i80_mode; int vm; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {TYPE_1__* encoder; struct exynos_mic* driver_private; } ;
struct TYPE_4__ {int i80_mode; } ;
struct TYPE_3__ {int crtc; } ;


 int drm_display_mode_to_videomode (struct drm_display_mode const*,int *) ;
 int mic_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_exynos_crtc (int ) ;

__attribute__((used)) static void mic_mode_set(struct drm_bridge *bridge,
    const struct drm_display_mode *mode,
    const struct drm_display_mode *adjusted_mode)
{
 struct exynos_mic *mic = bridge->driver_private;

 mutex_lock(&mic_mutex);
 drm_display_mode_to_videomode(mode, &mic->vm);
 mic->i80_mode = to_exynos_crtc(bridge->encoder->crtc)->i80_mode;
 mutex_unlock(&mic_mutex);
}
