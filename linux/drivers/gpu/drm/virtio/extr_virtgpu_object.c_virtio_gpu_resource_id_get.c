
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct virtio_gpu_device {int resource_ida; } ;


 int GFP_KERNEL ;
 int ida_alloc (int *,int ) ;

__attribute__((used)) static int virtio_gpu_resource_id_get(struct virtio_gpu_device *vgdev,
           uint32_t *resid)
{






 static int handle;






 handle++;


 *resid = handle + 1;
 return 0;
}
