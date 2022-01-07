
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ seqno; int * ops; } ;
struct qxl_release {int type; int id; TYPE_1__ base; int bos; scalar_t__ surface_release_id; scalar_t__ release_offset; } ;
struct qxl_device {int release_idr_lock; scalar_t__ release_seqno; int release_idr; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int idr_alloc (int *,struct qxl_release*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int kfree (struct qxl_release*) ;
 struct qxl_release* kmalloc (size_t,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
qxl_release_alloc(struct qxl_device *qdev, int type,
    struct qxl_release **ret)
{
 struct qxl_release *release;
 int handle;
 size_t size = sizeof(*release);

 release = kmalloc(size, GFP_KERNEL);
 if (!release) {
  DRM_ERROR("Out of memory\n");
  return -ENOMEM;
 }
 release->base.ops = ((void*)0);
 release->type = type;
 release->release_offset = 0;
 release->surface_release_id = 0;
 INIT_LIST_HEAD(&release->bos);

 idr_preload(GFP_KERNEL);
 spin_lock(&qdev->release_idr_lock);
 handle = idr_alloc(&qdev->release_idr, release, 1, 0, GFP_NOWAIT);
 release->base.seqno = ++qdev->release_seqno;
 spin_unlock(&qdev->release_idr_lock);
 idr_preload_end();
 if (handle < 0) {
  kfree(release);
  *ret = ((void*)0);
  return handle;
 }
 *ret = release;
 DRM_DEBUG_DRIVER("allocated release %d\n", handle);
 release->id = handle;
 return handle;
}
