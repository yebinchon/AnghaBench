
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ops; } ;
struct qxl_release {TYPE_1__ base; int bos; int id; scalar_t__ surface_release_id; int type; } ;
struct qxl_device {int release_idr_lock; int release_idr; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int WARN_ON (int ) ;
 int dma_fence_put (TYPE_1__*) ;
 int dma_fence_signal (TYPE_1__*) ;
 int idr_remove (int *,int ) ;
 int kfree (struct qxl_release*) ;
 int list_empty (int *) ;
 int qxl_release_free_list (struct qxl_release*) ;
 int qxl_surface_id_dealloc (struct qxl_device*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
qxl_release_free(struct qxl_device *qdev,
   struct qxl_release *release)
{
 DRM_DEBUG_DRIVER("release %d, type %d\n", release->id, release->type);

 if (release->surface_release_id)
  qxl_surface_id_dealloc(qdev, release->surface_release_id);

 spin_lock(&qdev->release_idr_lock);
 idr_remove(&qdev->release_idr, release->id);
 spin_unlock(&qdev->release_idr_lock);

 if (release->base.ops) {
  WARN_ON(list_empty(&release->bos));
  qxl_release_free_list(release);

  dma_fence_signal(&release->base);
  dma_fence_put(&release->base);
 } else {
  qxl_release_free_list(release);
  kfree(release);
 }
}
