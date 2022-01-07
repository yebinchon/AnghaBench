
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_fence_driver {int last_seq; int * cpu_addr; } ;
struct amdgpu_ring {struct amdgpu_fence_driver fence_drv; } ;


 int atomic_read (int *) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 amdgpu_fence_read(struct amdgpu_ring *ring)
{
 struct amdgpu_fence_driver *drv = &ring->fence_drv;
 u32 seq = 0;

 if (drv->cpu_addr)
  seq = le32_to_cpu(*drv->cpu_addr);
 else
  seq = atomic_read(&drv->last_seq);

 return seq;
}
