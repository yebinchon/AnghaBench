
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int virtio_gpu_resp_cb ;
struct virtio_gpu_vbuffer {scalar_t__ buf; } ;
struct virtio_gpu_device {int dummy; } ;
typedef void virtio_gpu_command ;


 void* ERR_CAST (struct virtio_gpu_vbuffer*) ;
 scalar_t__ IS_ERR (struct virtio_gpu_vbuffer*) ;
 struct virtio_gpu_vbuffer* virtio_gpu_get_vbuf (struct virtio_gpu_device*,int,int,void*,int ) ;

__attribute__((used)) static void *virtio_gpu_alloc_cmd_resp(struct virtio_gpu_device *vgdev,
           virtio_gpu_resp_cb cb,
           struct virtio_gpu_vbuffer **vbuffer_p,
           int cmd_size, int resp_size,
           void *resp_buf)
{
 struct virtio_gpu_vbuffer *vbuf;

 vbuf = virtio_gpu_get_vbuf(vgdev, cmd_size,
       resp_size, resp_buf, cb);
 if (IS_ERR(vbuf)) {
  *vbuffer_p = ((void*)0);
  return ERR_CAST(vbuf);
 }
 *vbuffer_p = vbuf;
 return (struct virtio_gpu_command *)vbuf->buf;
}
