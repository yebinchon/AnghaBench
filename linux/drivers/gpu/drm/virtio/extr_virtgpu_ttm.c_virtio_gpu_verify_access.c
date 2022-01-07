
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;
struct file {int dummy; } ;



__attribute__((used)) static int virtio_gpu_verify_access(struct ttm_buffer_object *bo,
        struct file *filp)
{
 return 0;
}
