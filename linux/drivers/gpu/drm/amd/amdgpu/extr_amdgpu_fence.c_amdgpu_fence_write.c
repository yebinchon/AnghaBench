
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_fence_driver {int * cpu_addr; } ;
struct amdgpu_ring {struct amdgpu_fence_driver fence_drv; } ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static void amdgpu_fence_write(struct amdgpu_ring *ring, u32 seq)
{
 struct amdgpu_fence_driver *drv = &ring->fence_drv;

 if (drv->cpu_addr)
  *drv->cpu_addr = cpu_to_le32(seq);
}
