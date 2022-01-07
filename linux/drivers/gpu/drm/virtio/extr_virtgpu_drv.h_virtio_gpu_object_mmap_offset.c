
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int vma_node; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct virtio_gpu_object {TYPE_2__ tbo; } ;


 int drm_vma_node_offset_addr (int *) ;

__attribute__((used)) static inline u64 virtio_gpu_object_mmap_offset(struct virtio_gpu_object *bo)
{
 return drm_vma_node_offset_addr(&bo->tbo.base.vma_node);
}
