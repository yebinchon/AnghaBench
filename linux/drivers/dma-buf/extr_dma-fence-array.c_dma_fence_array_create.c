
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct dma_fence_array_cb {int dummy; } ;
struct TYPE_2__ {int error; } ;
struct dma_fence_array {int num_fences; TYPE_1__ base; struct dma_fence** fences; int num_pending; int work; int lock; } ;
struct dma_fence {int dummy; } ;


 int GFP_KERNEL ;
 int PENDING_ERROR ;
 int atomic_set (int *,int) ;
 int dma_fence_array_ops ;
 int dma_fence_init (TYPE_1__*,int *,int *,int ,unsigned int) ;
 int init_irq_work (int *,int ) ;
 int irq_dma_fence_array_work ;
 struct dma_fence_array* kzalloc (size_t,int ) ;
 int spin_lock_init (int *) ;

struct dma_fence_array *dma_fence_array_create(int num_fences,
            struct dma_fence **fences,
            u64 context, unsigned seqno,
            bool signal_on_any)
{
 struct dma_fence_array *array;
 size_t size = sizeof(*array);


 size += num_fences * sizeof(struct dma_fence_array_cb);
 array = kzalloc(size, GFP_KERNEL);
 if (!array)
  return ((void*)0);

 spin_lock_init(&array->lock);
 dma_fence_init(&array->base, &dma_fence_array_ops, &array->lock,
         context, seqno);
 init_irq_work(&array->work, irq_dma_fence_array_work);

 array->num_fences = num_fences;
 atomic_set(&array->num_pending, signal_on_any ? 1 : num_fences);
 array->fences = fences;

 array->base.error = PENDING_ERROR;

 return array;
}
