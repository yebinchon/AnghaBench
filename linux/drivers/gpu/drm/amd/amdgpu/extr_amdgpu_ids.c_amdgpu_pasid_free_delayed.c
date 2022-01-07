
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct dma_fence_array {struct dma_fence base; } ;
struct amdgpu_pasid_cb {unsigned int pasid; int cb; } ;


 int GFP_KERNEL ;
 int MAX_SCHEDULE_TIMEOUT ;
 int amdgpu_pasid_free (unsigned int) ;
 int amdgpu_pasid_free_cb (struct dma_fence*,int *) ;
 scalar_t__ dma_fence_add_callback (struct dma_fence*,int *,int (*) (struct dma_fence*,int *)) ;
 struct dma_fence_array* dma_fence_array_create (unsigned int,struct dma_fence**,int ,int,int) ;
 int dma_fence_context_alloc (int) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_wait (struct dma_fence*,int) ;
 int dma_resv_get_fences_rcu (struct dma_resv*,int *,unsigned int*,struct dma_fence***) ;
 int dma_resv_wait_timeout_rcu (struct dma_resv*,int,int,int ) ;
 int kfree (struct dma_fence**) ;
 struct amdgpu_pasid_cb* kmalloc (int,int ) ;

void amdgpu_pasid_free_delayed(struct dma_resv *resv,
          unsigned int pasid)
{
 struct dma_fence *fence, **fences;
 struct amdgpu_pasid_cb *cb;
 unsigned count;
 int r;

 r = dma_resv_get_fences_rcu(resv, ((void*)0), &count, &fences);
 if (r)
  goto fallback;

 if (count == 0) {
  amdgpu_pasid_free(pasid);
  return;
 }

 if (count == 1) {
  fence = fences[0];
  kfree(fences);
 } else {
  uint64_t context = dma_fence_context_alloc(1);
  struct dma_fence_array *array;

  array = dma_fence_array_create(count, fences, context,
            1, 0);
  if (!array) {
   kfree(fences);
   goto fallback;
  }
  fence = &array->base;
 }

 cb = kmalloc(sizeof(*cb), GFP_KERNEL);
 if (!cb) {

  dma_fence_wait(fence, 0);
  dma_fence_put(fence);
  amdgpu_pasid_free(pasid);
 } else {
  cb->pasid = pasid;
  if (dma_fence_add_callback(fence, &cb->cb,
        amdgpu_pasid_free_cb))
   amdgpu_pasid_free_cb(fence, &cb->cb);
 }

 return;

fallback:



 dma_resv_wait_timeout_rcu(resv, 1, 0,
         MAX_SCHEDULE_TIMEOUT);
 amdgpu_pasid_free(pasid);
}
