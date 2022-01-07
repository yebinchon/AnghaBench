
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_panel {int dummy; } ;
struct acx565akm_panel {int mutex; } ;


 int acx565akm_power_on (struct acx565akm_panel*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct acx565akm_panel* to_acx565akm_device (struct drm_panel*) ;

__attribute__((used)) static int acx565akm_enable(struct drm_panel *panel)
{
 struct acx565akm_panel *lcd = to_acx565akm_device(panel);

 mutex_lock(&lcd->mutex);
 acx565akm_power_on(lcd);
 mutex_unlock(&lcd->mutex);

 return 0;
}
