
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; int * dev_private; } ;
struct drm_buf {int used; scalar_t__ pending; struct drm_file* file_priv; TYPE_2__* dev_private; } ;
struct TYPE_3__ {size_t idx; scalar_t__ prim; int discard; int count; } ;
typedef TYPE_1__ drm_r128_vertex_t ;
typedef int drm_r128_private_t ;
struct TYPE_4__ {size_t prim; int discard; } ;
typedef TYPE_2__ drm_r128_buf_priv_t ;


 int COMMIT_RING () ;
 int DEV_INIT_TEST_WITH_RETURN (int *) ;
 int DRM_DEBUG (char*,int ,size_t,int ,int ) ;
 int DRM_ERROR (char*,size_t,...) ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 scalar_t__ R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2 ;
 int RING_SPACE_TEST_WITH_RETURN (int *) ;
 int VB_AGE_TEST_WITH_RETURN (int *) ;
 int current ;
 int r128_cce_dispatch_vertex (struct drm_device*,struct drm_buf*) ;
 int task_pid_nr (int ) ;

__attribute__((used)) static int r128_cce_vertex(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 struct drm_device_dma *dma = dev->dma;
 struct drm_buf *buf;
 drm_r128_buf_priv_t *buf_priv;
 drm_r128_vertex_t *vertex = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DEV_INIT_TEST_WITH_RETURN(dev_priv);

 DRM_DEBUG("pid=%d index=%d count=%d discard=%d\n",
    task_pid_nr(current), vertex->idx, vertex->count, vertex->discard);

 if (vertex->idx < 0 || vertex->idx >= dma->buf_count) {
  DRM_ERROR("buffer index %d (of %d max)\n",
     vertex->idx, dma->buf_count - 1);
  return -EINVAL;
 }
 if (vertex->prim < 0 ||
     vertex->prim > R128_CCE_VC_CNTL_PRIM_TYPE_TRI_TYPE2) {
  DRM_ERROR("buffer prim %d\n", vertex->prim);
  return -EINVAL;
 }

 RING_SPACE_TEST_WITH_RETURN(dev_priv);
 VB_AGE_TEST_WITH_RETURN(dev_priv);

 buf = dma->buflist[vertex->idx];
 buf_priv = buf->dev_private;

 if (buf->file_priv != file_priv) {
  DRM_ERROR("process %d using buffer owned by %p\n",
     task_pid_nr(current), buf->file_priv);
  return -EINVAL;
 }
 if (buf->pending) {
  DRM_ERROR("sending pending buffer %d\n", vertex->idx);
  return -EINVAL;
 }

 buf->used = vertex->count;
 buf_priv->prim = vertex->prim;
 buf_priv->discard = vertex->discard;

 r128_cce_dispatch_vertex(dev, buf);

 COMMIT_RING();
 return 0;
}
