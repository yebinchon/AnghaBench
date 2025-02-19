
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_gpu_vbuffer {int list; } ;
struct list_head {int dummy; } ;


 int DRM_DEBUG (char*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct virtio_gpu_vbuffer* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;

__attribute__((used)) static void reclaim_vbufs(struct virtqueue *vq, struct list_head *reclaim_list)
{
 struct virtio_gpu_vbuffer *vbuf;
 unsigned int len;
 int freed = 0;

 while ((vbuf = virtqueue_get_buf(vq, &len))) {
  list_add_tail(&vbuf->list, reclaim_list);
  freed++;
 }
 if (freed == 0)
  DRM_DEBUG("Huh? zero vbufs reclaimed");
}
