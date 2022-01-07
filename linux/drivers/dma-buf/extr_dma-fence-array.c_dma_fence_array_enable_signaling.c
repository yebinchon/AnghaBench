
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_fence_array_cb {int cb; struct dma_fence_array* array; } ;
struct dma_fence_array {unsigned int num_fences; int num_pending; int base; TYPE_1__** fences; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int error; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ dma_fence_add_callback (TYPE_1__*,int *,int ) ;
 int dma_fence_array_cb_func ;
 int dma_fence_array_clear_pending_error (struct dma_fence_array*) ;
 int dma_fence_array_set_pending_error (struct dma_fence_array*,int) ;
 int dma_fence_get (int *) ;
 int dma_fence_put (int *) ;
 struct dma_fence_array* to_dma_fence_array (struct dma_fence*) ;

__attribute__((used)) static bool dma_fence_array_enable_signaling(struct dma_fence *fence)
{
 struct dma_fence_array *array = to_dma_fence_array(fence);
 struct dma_fence_array_cb *cb = (void *)(&array[1]);
 unsigned i;

 for (i = 0; i < array->num_fences; ++i) {
  cb[i].array = array;
  dma_fence_get(&array->base);
  if (dma_fence_add_callback(array->fences[i], &cb[i].cb,
        dma_fence_array_cb_func)) {
   int error = array->fences[i]->error;

   dma_fence_array_set_pending_error(array, error);
   dma_fence_put(&array->base);
   if (atomic_dec_and_test(&array->num_pending)) {
    dma_fence_array_clear_pending_error(array);
    return 0;
   }
  }
 }

 return 1;
}
