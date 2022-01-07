
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_12__ {int gpu_addr; unsigned int irq_type; int initialized; int * cpu_addr; struct amdgpu_irq_src* irq_src; int last_seq; } ;
struct amdgpu_ring {size_t fence_offs; size_t me; TYPE_6__ fence_drv; int name; TYPE_1__* funcs; struct amdgpu_device* adev; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_11__ {TYPE_4__* inst; TYPE_3__* fw; } ;
struct TYPE_8__ {int gpu_addr; int * wb; } ;
struct amdgpu_device {int dev; TYPE_5__ uvd; TYPE_2__ wb; } ;
struct TYPE_10__ {int gpu_addr; int * cpu_addr; } ;
struct TYPE_9__ {int size; } ;
struct TYPE_7__ {scalar_t__ type; } ;


 int ALIGN (int ,int) ;
 scalar_t__ AMDGPU_RING_TYPE_UVD ;
 int DRM_DEV_DEBUG (int ,char*,int ,int,int *) ;
 int amdgpu_fence_write (struct amdgpu_ring*,int ) ;
 int amdgpu_irq_get (struct amdgpu_device*,struct amdgpu_irq_src*,unsigned int) ;
 int atomic_read (int *) ;

int amdgpu_fence_driver_start_ring(struct amdgpu_ring *ring,
       struct amdgpu_irq_src *irq_src,
       unsigned irq_type)
{
 struct amdgpu_device *adev = ring->adev;
 uint64_t index;

 if (ring->funcs->type != AMDGPU_RING_TYPE_UVD) {
  ring->fence_drv.cpu_addr = &adev->wb.wb[ring->fence_offs];
  ring->fence_drv.gpu_addr = adev->wb.gpu_addr + (ring->fence_offs * 4);
 } else {

  index = ALIGN(adev->uvd.fw->size, 8);
  ring->fence_drv.cpu_addr = adev->uvd.inst[ring->me].cpu_addr + index;
  ring->fence_drv.gpu_addr = adev->uvd.inst[ring->me].gpu_addr + index;
 }
 amdgpu_fence_write(ring, atomic_read(&ring->fence_drv.last_seq));
 amdgpu_irq_get(adev, irq_src, irq_type);

 ring->fence_drv.irq_src = irq_src;
 ring->fence_drv.irq_type = irq_type;
 ring->fence_drv.initialized = 1;

 DRM_DEV_DEBUG(adev->dev, "fence driver on ring %s use gpu addr "
        "0x%016llx, cpu addr 0x%p\n", ring->name,
        ring->fence_drv.gpu_addr, ring->fence_drv.cpu_addr);
 return 0;
}
