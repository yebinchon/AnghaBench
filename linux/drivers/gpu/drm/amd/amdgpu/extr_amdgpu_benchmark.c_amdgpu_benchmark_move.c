
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ buffer_funcs; } ;
struct amdgpu_device {TYPE_1__ mman; } ;
struct amdgpu_bo_param {unsigned int size; unsigned int domain; int * resv; int type; scalar_t__ flags; int byte_align; } ;
struct amdgpu_bo {int tbo; } ;
typedef int bp ;


 int AMDGPU_BENCHMARK_ITERATIONS ;
 int DRM_ERROR (char*) ;
 int PAGE_SIZE ;
 int amdgpu_benchmark_do_move (struct amdgpu_device*,unsigned int,int ,int ,int) ;
 int amdgpu_benchmark_log_results (int,unsigned int,int,unsigned int,unsigned int,char*) ;
 int amdgpu_bo_create (struct amdgpu_device*,struct amdgpu_bo_param*,struct amdgpu_bo**) ;
 int amdgpu_bo_gpu_offset (struct amdgpu_bo*) ;
 int amdgpu_bo_pin (struct amdgpu_bo*,unsigned int) ;
 int amdgpu_bo_reserve (struct amdgpu_bo*,int) ;
 int amdgpu_bo_unpin (struct amdgpu_bo*) ;
 int amdgpu_bo_unref (struct amdgpu_bo**) ;
 int amdgpu_bo_unreserve (struct amdgpu_bo*) ;
 int amdgpu_ttm_alloc_gart (int *) ;
 scalar_t__ likely (int) ;
 int memset (struct amdgpu_bo_param*,int ,int) ;
 int ttm_bo_type_kernel ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void amdgpu_benchmark_move(struct amdgpu_device *adev, unsigned size,
      unsigned sdomain, unsigned ddomain)
{
 struct amdgpu_bo *dobj = ((void*)0);
 struct amdgpu_bo *sobj = ((void*)0);
 struct amdgpu_bo_param bp;
 uint64_t saddr, daddr;
 int r, n;
 int time;

 memset(&bp, 0, sizeof(bp));
 bp.size = size;
 bp.byte_align = PAGE_SIZE;
 bp.domain = sdomain;
 bp.flags = 0;
 bp.type = ttm_bo_type_kernel;
 bp.resv = ((void*)0);
 n = AMDGPU_BENCHMARK_ITERATIONS;
 r = amdgpu_bo_create(adev, &bp, &sobj);
 if (r) {
  goto out_cleanup;
 }
 r = amdgpu_bo_reserve(sobj, 0);
 if (unlikely(r != 0))
  goto out_cleanup;
 r = amdgpu_bo_pin(sobj, sdomain);
 if (r) {
  amdgpu_bo_unreserve(sobj);
  goto out_cleanup;
 }
 r = amdgpu_ttm_alloc_gart(&sobj->tbo);
 amdgpu_bo_unreserve(sobj);
 if (r) {
  goto out_cleanup;
 }
 saddr = amdgpu_bo_gpu_offset(sobj);
 bp.domain = ddomain;
 r = amdgpu_bo_create(adev, &bp, &dobj);
 if (r) {
  goto out_cleanup;
 }
 r = amdgpu_bo_reserve(dobj, 0);
 if (unlikely(r != 0))
  goto out_cleanup;
 r = amdgpu_bo_pin(dobj, ddomain);
 if (r) {
  amdgpu_bo_unreserve(sobj);
  goto out_cleanup;
 }
 r = amdgpu_ttm_alloc_gart(&dobj->tbo);
 amdgpu_bo_unreserve(dobj);
 if (r) {
  goto out_cleanup;
 }
 daddr = amdgpu_bo_gpu_offset(dobj);

 if (adev->mman.buffer_funcs) {
  time = amdgpu_benchmark_do_move(adev, size, saddr, daddr, n);
  if (time < 0)
   goto out_cleanup;
  if (time > 0)
   amdgpu_benchmark_log_results(n, size, time,
           sdomain, ddomain, "dma");
 }

out_cleanup:

 if (r) {
  DRM_ERROR("Error while benchmarking BO move.\n");
 }

 if (sobj) {
  r = amdgpu_bo_reserve(sobj, 1);
  if (likely(r == 0)) {
   amdgpu_bo_unpin(sobj);
   amdgpu_bo_unreserve(sobj);
  }
  amdgpu_bo_unref(&sobj);
 }
 if (dobj) {
  r = amdgpu_bo_reserve(dobj, 1);
  if (likely(r == 0)) {
   amdgpu_bo_unpin(dobj);
   amdgpu_bo_unreserve(dobj);
  }
  amdgpu_bo_unref(&dobj);
 }
}
