
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int seeks; int scan_objects; int count_objects; } ;
struct panfrost_device {TYPE_1__ shrinker; } ;
struct drm_device {struct panfrost_device* dev_private; } ;


 int DEFAULT_SEEKS ;
 int WARN_ON (int ) ;
 int panfrost_gem_shrinker_count ;
 int panfrost_gem_shrinker_scan ;
 int register_shrinker (TYPE_1__*) ;

void panfrost_gem_shrinker_init(struct drm_device *dev)
{
 struct panfrost_device *pfdev = dev->dev_private;
 pfdev->shrinker.count_objects = panfrost_gem_shrinker_count;
 pfdev->shrinker.scan_objects = panfrost_gem_shrinker_scan;
 pfdev->shrinker.seeks = DEFAULT_SEEKS;
 WARN_ON(register_shrinker(&pfdev->shrinker));
}
