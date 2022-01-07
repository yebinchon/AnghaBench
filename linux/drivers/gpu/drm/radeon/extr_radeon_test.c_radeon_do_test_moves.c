
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_fence {int dummy; } ;
struct TYPE_4__ {unsigned int gtt_size; int gtt_start; int vram_start; } ;
struct radeon_device {unsigned int gart_pin_size; TYPE_1__ mc; } ;
struct TYPE_5__ {int resv; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct radeon_bo {TYPE_3__ tbo; } ;


 int DRM_ERROR (char*,...) ;
 int DRM_INFO (char*,int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct radeon_fence*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct radeon_fence*) ;
 int R600_RING_TYPE_DMA_INDEX ;
 int RADEON_GEM_DOMAIN_GTT ;
 int RADEON_GEM_DOMAIN_VRAM ;
 unsigned int RADEON_GPU_PAGE_SIZE ;


 struct radeon_bo** kcalloc (unsigned int,int,int ) ;
 int kfree (struct radeon_bo**) ;
 int pr_warn (char*) ;
 int radeon_bo_create (struct radeon_device*,unsigned int,int ,int,int ,int ,int *,int *,struct radeon_bo**) ;
 int radeon_bo_kmap (struct radeon_bo*,void**) ;
 int radeon_bo_kunmap (struct radeon_bo*) ;
 int radeon_bo_pin (struct radeon_bo*,int ,int*) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unref (struct radeon_bo**) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;
 struct radeon_fence* radeon_copy_blit (struct radeon_device*,int,int,unsigned int,int ) ;
 int radeon_copy_blit_ring_index (struct radeon_device*) ;
 struct radeon_fence* radeon_copy_dma (struct radeon_device*,int,int,unsigned int,int ) ;
 int radeon_copy_dma_ring_index (struct radeon_device*) ;
 int radeon_fence_unref (struct radeon_fence**) ;
 int radeon_fence_wait (struct radeon_fence*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void radeon_do_test_moves(struct radeon_device *rdev, int flag)
{
 struct radeon_bo *vram_obj = ((void*)0);
 struct radeon_bo **gtt_obj = ((void*)0);
 uint64_t gtt_addr, vram_addr;
 unsigned n, size;
 int i, r, ring;

 switch (flag) {
 case 128:
  ring = radeon_copy_dma_ring_index(rdev);
  break;
 case 129:
  ring = radeon_copy_blit_ring_index(rdev);
  break;
 default:
  DRM_ERROR("Unknown copy method\n");
  return;
 }

 size = 1024 * 1024;




 n = rdev->mc.gtt_size - rdev->gart_pin_size;
 n /= size;

 gtt_obj = kcalloc(n, sizeof(*gtt_obj), GFP_KERNEL);
 if (!gtt_obj) {
  DRM_ERROR("Failed to allocate %d pointers\n", n);
  r = 1;
  goto out_cleanup;
 }

 r = radeon_bo_create(rdev, size, PAGE_SIZE, 1, RADEON_GEM_DOMAIN_VRAM,
        0, ((void*)0), ((void*)0), &vram_obj);
 if (r) {
  DRM_ERROR("Failed to create VRAM object\n");
  goto out_cleanup;
 }
 r = radeon_bo_reserve(vram_obj, 0);
 if (unlikely(r != 0))
  goto out_unref;
 r = radeon_bo_pin(vram_obj, RADEON_GEM_DOMAIN_VRAM, &vram_addr);
 if (r) {
  DRM_ERROR("Failed to pin VRAM object\n");
  goto out_unres;
 }
 for (i = 0; i < n; i++) {
  void *gtt_map, *vram_map;
  void **gtt_start, **gtt_end;
  void **vram_start, **vram_end;
  struct radeon_fence *fence = ((void*)0);

  r = radeon_bo_create(rdev, size, PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_GTT, 0, ((void*)0), ((void*)0),
         gtt_obj + i);
  if (r) {
   DRM_ERROR("Failed to create GTT object %d\n", i);
   goto out_lclean;
  }

  r = radeon_bo_reserve(gtt_obj[i], 0);
  if (unlikely(r != 0))
   goto out_lclean_unref;
  r = radeon_bo_pin(gtt_obj[i], RADEON_GEM_DOMAIN_GTT, &gtt_addr);
  if (r) {
   DRM_ERROR("Failed to pin GTT object %d\n", i);
   goto out_lclean_unres;
  }

  r = radeon_bo_kmap(gtt_obj[i], &gtt_map);
  if (r) {
   DRM_ERROR("Failed to map GTT object %d\n", i);
   goto out_lclean_unpin;
  }

  for (gtt_start = gtt_map, gtt_end = gtt_map + size;
       gtt_start < gtt_end;
       gtt_start++)
   *gtt_start = gtt_start;

  radeon_bo_kunmap(gtt_obj[i]);

  if (ring == R600_RING_TYPE_DMA_INDEX)
   fence = radeon_copy_dma(rdev, gtt_addr, vram_addr,
      size / RADEON_GPU_PAGE_SIZE,
      vram_obj->tbo.base.resv);
  else
   fence = radeon_copy_blit(rdev, gtt_addr, vram_addr,
       size / RADEON_GPU_PAGE_SIZE,
       vram_obj->tbo.base.resv);
  if (IS_ERR(fence)) {
   DRM_ERROR("Failed GTT->VRAM copy %d\n", i);
   r = PTR_ERR(fence);
   goto out_lclean_unpin;
  }

  r = radeon_fence_wait(fence, 0);
  if (r) {
   DRM_ERROR("Failed to wait for GTT->VRAM fence %d\n", i);
   goto out_lclean_unpin;
  }

  radeon_fence_unref(&fence);

  r = radeon_bo_kmap(vram_obj, &vram_map);
  if (r) {
   DRM_ERROR("Failed to map VRAM object after copy %d\n", i);
   goto out_lclean_unpin;
  }

  for (gtt_start = gtt_map, gtt_end = gtt_map + size,
       vram_start = vram_map, vram_end = vram_map + size;
       vram_start < vram_end;
       gtt_start++, vram_start++) {
   if (*vram_start != gtt_start) {
    DRM_ERROR("Incorrect GTT->VRAM copy %d: Got 0x%p, "
       "expected 0x%p (GTT/VRAM offset "
       "0x%16llx/0x%16llx)\n",
       i, *vram_start, gtt_start,
       (unsigned long long)
       (gtt_addr - rdev->mc.gtt_start +
        (void*)gtt_start - gtt_map),
       (unsigned long long)
       (vram_addr - rdev->mc.vram_start +
        (void*)gtt_start - gtt_map));
    radeon_bo_kunmap(vram_obj);
    goto out_lclean_unpin;
   }
   *vram_start = vram_start;
  }

  radeon_bo_kunmap(vram_obj);

  if (ring == R600_RING_TYPE_DMA_INDEX)
   fence = radeon_copy_dma(rdev, vram_addr, gtt_addr,
      size / RADEON_GPU_PAGE_SIZE,
      vram_obj->tbo.base.resv);
  else
   fence = radeon_copy_blit(rdev, vram_addr, gtt_addr,
       size / RADEON_GPU_PAGE_SIZE,
       vram_obj->tbo.base.resv);
  if (IS_ERR(fence)) {
   DRM_ERROR("Failed VRAM->GTT copy %d\n", i);
   r = PTR_ERR(fence);
   goto out_lclean_unpin;
  }

  r = radeon_fence_wait(fence, 0);
  if (r) {
   DRM_ERROR("Failed to wait for VRAM->GTT fence %d\n", i);
   goto out_lclean_unpin;
  }

  radeon_fence_unref(&fence);

  r = radeon_bo_kmap(gtt_obj[i], &gtt_map);
  if (r) {
   DRM_ERROR("Failed to map GTT object after copy %d\n", i);
   goto out_lclean_unpin;
  }

  for (gtt_start = gtt_map, gtt_end = gtt_map + size,
       vram_start = vram_map, vram_end = vram_map + size;
       gtt_start < gtt_end;
       gtt_start++, vram_start++) {
   if (*gtt_start != vram_start) {
    DRM_ERROR("Incorrect VRAM->GTT copy %d: Got 0x%p, "
       "expected 0x%p (VRAM/GTT offset "
       "0x%16llx/0x%16llx)\n",
       i, *gtt_start, vram_start,
       (unsigned long long)
       (vram_addr - rdev->mc.vram_start +
        (void*)vram_start - vram_map),
       (unsigned long long)
       (gtt_addr - rdev->mc.gtt_start +
        (void*)vram_start - vram_map));
    radeon_bo_kunmap(gtt_obj[i]);
    goto out_lclean_unpin;
   }
  }

  radeon_bo_kunmap(gtt_obj[i]);

  DRM_INFO("Tested GTT->VRAM and VRAM->GTT copy for GTT offset 0x%llx\n",
    gtt_addr - rdev->mc.gtt_start);
  continue;

out_lclean_unpin:
  radeon_bo_unpin(gtt_obj[i]);
out_lclean_unres:
  radeon_bo_unreserve(gtt_obj[i]);
out_lclean_unref:
  radeon_bo_unref(&gtt_obj[i]);
out_lclean:
  for (--i; i >= 0; --i) {
   radeon_bo_unpin(gtt_obj[i]);
   radeon_bo_unreserve(gtt_obj[i]);
   radeon_bo_unref(&gtt_obj[i]);
  }
  if (fence && !IS_ERR(fence))
   radeon_fence_unref(&fence);
  break;
 }

 radeon_bo_unpin(vram_obj);
out_unres:
 radeon_bo_unreserve(vram_obj);
out_unref:
 radeon_bo_unref(&vram_obj);
out_cleanup:
 kfree(gtt_obj);
 if (r) {
  pr_warn("Error while testing BO move\n");
 }
}
