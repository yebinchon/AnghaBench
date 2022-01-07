
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_gpu_box {void* d; void* h; void* w; void* z; void* y; void* x; } ;
struct drm_virtgpu_3d_box {int d; int h; int w; int z; int y; int x; } ;


 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void convert_to_hw_box(struct virtio_gpu_box *dst,
         const struct drm_virtgpu_3d_box *src)
{
 dst->x = cpu_to_le32(src->x);
 dst->y = cpu_to_le32(src->y);
 dst->z = cpu_to_le32(src->z);
 dst->w = cpu_to_le32(src->w);
 dst->h = cpu_to_le32(src->h);
 dst->d = cpu_to_le32(src->d);
}
