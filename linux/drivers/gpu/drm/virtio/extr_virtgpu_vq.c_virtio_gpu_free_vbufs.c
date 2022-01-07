
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_device {int * vbufs; } ;


 int kmem_cache_destroy (int *) ;

void virtio_gpu_free_vbufs(struct virtio_gpu_device *vgdev)
{
 kmem_cache_destroy(vgdev->vbufs);
 vgdev->vbufs = ((void*)0);
}
