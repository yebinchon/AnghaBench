
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_vbuffer {scalar_t__ buf; } ;
struct virtio_gpu_update_cursor {int dummy; } ;
struct virtio_gpu_device {int dummy; } ;


 struct virtio_gpu_update_cursor* ERR_CAST (struct virtio_gpu_vbuffer*) ;
 scalar_t__ IS_ERR (struct virtio_gpu_vbuffer*) ;
 struct virtio_gpu_vbuffer* virtio_gpu_get_vbuf (struct virtio_gpu_device*,int,int ,int *,int *) ;

__attribute__((used)) static struct virtio_gpu_update_cursor*
virtio_gpu_alloc_cursor(struct virtio_gpu_device *vgdev,
   struct virtio_gpu_vbuffer **vbuffer_p)
{
 struct virtio_gpu_vbuffer *vbuf;

 vbuf = virtio_gpu_get_vbuf
  (vgdev, sizeof(struct virtio_gpu_update_cursor),
   0, ((void*)0), ((void*)0));
 if (IS_ERR(vbuf)) {
  *vbuffer_p = ((void*)0);
  return ERR_CAST(vbuf);
 }
 *vbuffer_p = vbuf;
 return (struct virtio_gpu_update_cursor *)vbuf->buf;
}
