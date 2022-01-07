
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psp_ring {int ring_mem; int ring_mem_mc_addr; } ;
struct psp_context {struct amdgpu_device* adev; struct psp_ring km_ring; } ;
struct TYPE_2__ {int rbuf; } ;
struct amdgpu_device {TYPE_1__ firmware; } ;
typedef enum psp_ring_type { ____Placeholder_psp_ring_type } psp_ring_type ;


 int DRM_ERROR (char*) ;
 int amdgpu_bo_free_kernel (int *,int *,void**) ;
 int psp_v12_0_ring_stop (struct psp_context*,int) ;

__attribute__((used)) static int psp_v12_0_ring_destroy(struct psp_context *psp,
     enum psp_ring_type ring_type)
{
 int ret = 0;
 struct psp_ring *ring = &psp->km_ring;
 struct amdgpu_device *adev = psp->adev;

 ret = psp_v12_0_ring_stop(psp, ring_type);
 if (ret)
  DRM_ERROR("Fail to stop psp ring\n");

 amdgpu_bo_free_kernel(&adev->firmware.rbuf,
         &ring->ring_mem_mc_addr,
         (void **)&ring->ring_mem);

 return ret;
}
