
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_vbuffer {scalar_t__ resp_size; int data_buf; int resp_buf; } ;
struct virtio_gpu_device {int vbufs; } ;


 scalar_t__ MAX_INLINE_RESP_SIZE ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct virtio_gpu_vbuffer*) ;

__attribute__((used)) static void free_vbuf(struct virtio_gpu_device *vgdev,
        struct virtio_gpu_vbuffer *vbuf)
{
 if (vbuf->resp_size > MAX_INLINE_RESP_SIZE)
  kfree(vbuf->resp_buf);
 kfree(vbuf->data_buf);
 kmem_cache_free(vgdev->vbufs, vbuf);
}
