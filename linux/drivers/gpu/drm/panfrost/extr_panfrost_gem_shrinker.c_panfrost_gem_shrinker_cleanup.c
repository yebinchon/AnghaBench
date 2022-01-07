
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr_deferred; } ;
struct panfrost_device {TYPE_1__ shrinker; } ;
struct drm_device {struct panfrost_device* dev_private; } ;


 int unregister_shrinker (TYPE_1__*) ;

void panfrost_gem_shrinker_cleanup(struct drm_device *dev)
{
 struct panfrost_device *pfdev = dev->dev_private;

 if (pfdev->shrinker.nr_deferred) {
  unregister_shrinker(&pfdev->shrinker);
 }
}
