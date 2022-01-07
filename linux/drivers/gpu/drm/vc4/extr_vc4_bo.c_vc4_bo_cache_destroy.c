
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int time_work; int time_timer; } ;
struct vc4_dev {int num_labels; TYPE_2__* bo_labels; TYPE_1__ bo_cache; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* name; scalar_t__ num_allocated; } ;


 int DRM_ERROR (char*,scalar_t__,TYPE_2__*) ;
 int cancel_work_sync (int *) ;
 int del_timer (int *) ;
 scalar_t__ is_user_label (int) ;
 int kfree (TYPE_2__*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_bo_cache_purge (struct drm_device*) ;

void vc4_bo_cache_destroy(struct drm_device *dev)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 int i;

 del_timer(&vc4->bo_cache.time_timer);
 cancel_work_sync(&vc4->bo_cache.time_work);

 vc4_bo_cache_purge(dev);

 for (i = 0; i < vc4->num_labels; i++) {
  if (vc4->bo_labels[i].num_allocated) {
   DRM_ERROR("Destroying BO cache with %d %s "
      "BOs still allocated\n",
      vc4->bo_labels[i].num_allocated,
      vc4->bo_labels[i].name);
  }

  if (is_user_label(i))
   kfree(vc4->bo_labels[i].name);
 }
 kfree(vc4->bo_labels);
}
