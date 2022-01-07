
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_fence_obj {void (* destroy ) (struct vmw_fence_obj*) ;int head; int seq_passed_actions; int base; } ;
struct vmw_fence_manager {int lock; int num_fence_objects; int fence_list; int fifo_down; int ctx; } ;


 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int dma_fence_init (int *,int *,int *,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int vmw_fence_ops ;

__attribute__((used)) static int vmw_fence_obj_init(struct vmw_fence_manager *fman,
         struct vmw_fence_obj *fence, u32 seqno,
         void (*destroy) (struct vmw_fence_obj *fence))
{
 int ret = 0;

 dma_fence_init(&fence->base, &vmw_fence_ops, &fman->lock,
         fman->ctx, seqno);
 INIT_LIST_HEAD(&fence->seq_passed_actions);
 fence->destroy = destroy;

 spin_lock(&fman->lock);
 if (unlikely(fman->fifo_down)) {
  ret = -EBUSY;
  goto out_unlock;
 }
 list_add_tail(&fence->head, &fman->fence_list);
 ++fman->num_fence_objects;

out_unlock:
 spin_unlock(&fman->lock);
 return ret;

}
