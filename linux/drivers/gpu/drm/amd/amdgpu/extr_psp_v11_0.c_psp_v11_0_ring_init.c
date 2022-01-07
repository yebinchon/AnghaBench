
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psp_ring {int ring_type; int ring_size; int ring_mem; int ring_mem_mc_addr; } ;
struct psp_context {struct psp_ring km_ring; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int rbuf; } ;
struct amdgpu_device {TYPE_1__ firmware; } ;
typedef enum psp_ring_type { ____Placeholder_psp_ring_type } psp_ring_type ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_kernel (struct amdgpu_device*,int,int ,int ,int *,int *,void**) ;
 int psp_v11_0_reroute_ih (struct psp_context*) ;

__attribute__((used)) static int psp_v11_0_ring_init(struct psp_context *psp,
         enum psp_ring_type ring_type)
{
 int ret = 0;
 struct psp_ring *ring;
 struct amdgpu_device *adev = psp->adev;

 psp_v11_0_reroute_ih(psp);

 ring = &psp->km_ring;

 ring->ring_type = ring_type;


 ring->ring_size = 0x1000;
 ret = amdgpu_bo_create_kernel(adev, ring->ring_size, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &adev->firmware.rbuf,
          &ring->ring_mem_mc_addr,
          (void **)&ring->ring_mem);
 if (ret) {
  ring->ring_size = 0;
  return ret;
 }

 return 0;
}
