
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {unsigned int ring_size; unsigned int rptr_offs; int nop; int ptr_mask; int ring_free_dw; int idx; int * next_rptr_cpu_addr; scalar_t__ next_rptr_gpu_addr; int * ring_obj; int ring; int gpu_addr; } ;
struct TYPE_2__ {int * wb; scalar_t__ gpu_addr; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; int dev; } ;


 int DRM_ERROR (char*) ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_WB_RING0_NEXT_RPTR ;
 int dev_err (int ,char*,int) ;
 int radeon_bo_create (struct radeon_device*,unsigned int,int ,int,int ,int ,int *,int *,int **) ;
 int radeon_bo_kmap (int *,void**) ;
 int radeon_bo_pin (int *,int ,int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unreserve (int *) ;
 scalar_t__ radeon_debugfs_ring_init (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_lockup_update (struct radeon_device*,struct radeon_ring*) ;
 scalar_t__ unlikely (int) ;

int radeon_ring_init(struct radeon_device *rdev, struct radeon_ring *ring, unsigned ring_size,
       unsigned rptr_offs, u32 nop)
{
 int r;

 ring->ring_size = ring_size;
 ring->rptr_offs = rptr_offs;
 ring->nop = nop;

 if (ring->ring_obj == ((void*)0)) {
  r = radeon_bo_create(rdev, ring->ring_size, PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_GTT, 0, ((void*)0),
         ((void*)0), &ring->ring_obj);
  if (r) {
   dev_err(rdev->dev, "(%d) ring create failed\n", r);
   return r;
  }
  r = radeon_bo_reserve(ring->ring_obj, 0);
  if (unlikely(r != 0))
   return r;
  r = radeon_bo_pin(ring->ring_obj, RADEON_GEM_DOMAIN_GTT,
     &ring->gpu_addr);
  if (r) {
   radeon_bo_unreserve(ring->ring_obj);
   dev_err(rdev->dev, "(%d) ring pin failed\n", r);
   return r;
  }
  r = radeon_bo_kmap(ring->ring_obj,
           (void **)&ring->ring);
  radeon_bo_unreserve(ring->ring_obj);
  if (r) {
   dev_err(rdev->dev, "(%d) ring map failed\n", r);
   return r;
  }
 }
 ring->ptr_mask = (ring->ring_size / 4) - 1;
 ring->ring_free_dw = ring->ring_size / 4;
 if (rdev->wb.enabled) {
  u32 index = RADEON_WB_RING0_NEXT_RPTR + (ring->idx * 4);
  ring->next_rptr_gpu_addr = rdev->wb.gpu_addr + index;
  ring->next_rptr_cpu_addr = &rdev->wb.wb[index/4];
 }
 if (radeon_debugfs_ring_init(rdev, ring)) {
  DRM_ERROR("Failed to register debugfs file for rings !\n");
 }
 radeon_ring_lockup_update(rdev, ring);
 return 0;
}
