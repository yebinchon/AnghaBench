
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ih_ring {int gpu_addr; int wptr_addr; int rptr_addr; int * ring; int ring_obj; scalar_t__ ring_size; scalar_t__ use_bus_addr; } ;
struct amdgpu_device {int dev; } ;


 int amdgpu_bo_free_kernel (int *,int*,void**) ;
 int amdgpu_device_wb_free (struct amdgpu_device*,int) ;
 int dma_free_coherent (int ,scalar_t__,void*,int) ;

void amdgpu_ih_ring_fini(struct amdgpu_device *adev, struct amdgpu_ih_ring *ih)
{
 if (ih->use_bus_addr) {
  if (!ih->ring)
   return;




  dma_free_coherent(adev->dev, ih->ring_size + 8,
      (void *)ih->ring, ih->gpu_addr);
  ih->ring = ((void*)0);
 } else {
  amdgpu_bo_free_kernel(&ih->ring_obj, &ih->gpu_addr,
          (void **)&ih->ring);
  amdgpu_device_wb_free(adev, (ih->wptr_addr - ih->gpu_addr) / 4);
  amdgpu_device_wb_free(adev, (ih->rptr_addr - ih->gpu_addr) / 4);
 }
}
