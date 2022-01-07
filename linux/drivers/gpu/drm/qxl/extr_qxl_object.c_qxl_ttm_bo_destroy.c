
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ttm_buffer_object {int dummy; } ;
struct TYPE_5__ {int mutex; } ;
struct qxl_device {TYPE_1__ gem; } ;
struct TYPE_8__ {TYPE_2__* dev; } ;
struct TYPE_7__ {TYPE_4__ base; } ;
struct qxl_bo {scalar_t__ map_count; TYPE_3__ tbo; int list; } ;
struct TYPE_6__ {scalar_t__ dev_private; } ;


 int WARN_ON_ONCE (int) ;
 int drm_gem_object_release (TYPE_4__*) ;
 int kfree (struct qxl_bo*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qxl_surface_evict (struct qxl_device*,struct qxl_bo*,int) ;
 struct qxl_bo* to_qxl_bo (struct ttm_buffer_object*) ;

__attribute__((used)) static void qxl_ttm_bo_destroy(struct ttm_buffer_object *tbo)
{
 struct qxl_bo *bo;
 struct qxl_device *qdev;

 bo = to_qxl_bo(tbo);
 qdev = (struct qxl_device *)bo->tbo.base.dev->dev_private;

 qxl_surface_evict(qdev, bo, 0);
 WARN_ON_ONCE(bo->map_count > 0);
 mutex_lock(&qdev->gem.mutex);
 list_del_init(&bo->list);
 mutex_unlock(&qdev->gem.mutex);
 drm_gem_object_release(&bo->tbo.base);
 kfree(bo);
}
