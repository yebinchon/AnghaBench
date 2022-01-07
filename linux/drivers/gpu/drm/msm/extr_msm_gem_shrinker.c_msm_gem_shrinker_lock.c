
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; } ;


 int BUG () ;



 int mutex_trylock_recursive (int *) ;

__attribute__((used)) static bool msm_gem_shrinker_lock(struct drm_device *dev, bool *unlock)
{
 switch (mutex_trylock_recursive(&dev->struct_mutex)) {
 case 130:
  return 0;

 case 128:
  *unlock = 1;
  return 1;

 case 129:
  *unlock = 0;
  return 1;
 }

 BUG();
}
