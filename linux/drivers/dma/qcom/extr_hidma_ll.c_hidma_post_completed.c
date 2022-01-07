
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef size_t u32 ;
struct hidma_tre {size_t tre_index; scalar_t__ queued; void* err_code; void* err_info; } ;
struct hidma_lldev {size_t tre_processed_off; int task; int handoff_fifo; int lock; int tre_ring_size; int pending_tre_count; int dev; struct hidma_tre** pending_tre_list; } ;


 int EINVAL ;
 int HIDMA_INCREMENT_ITERATOR (size_t,size_t,int ) ;
 size_t HIDMA_TRE_SIZE ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_set (int *,int ) ;
 int dev_warn (int ,char*,...) ;
 int kfifo_put (int *,struct hidma_tre*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static int hidma_post_completed(struct hidma_lldev *lldev, u8 err_info,
    u8 err_code)
{
 struct hidma_tre *tre;
 unsigned long flags;
 u32 tre_iterator;

 spin_lock_irqsave(&lldev->lock, flags);

 tre_iterator = lldev->tre_processed_off;
 tre = lldev->pending_tre_list[tre_iterator / HIDMA_TRE_SIZE];
 if (!tre) {
  spin_unlock_irqrestore(&lldev->lock, flags);
  dev_warn(lldev->dev, "tre_index [%d] and tre out of sync\n",
    tre_iterator / HIDMA_TRE_SIZE);
  return -EINVAL;
 }
 lldev->pending_tre_list[tre->tre_index] = ((void*)0);





 if (atomic_dec_return(&lldev->pending_tre_count) < 0) {
  dev_warn(lldev->dev, "tre count mismatch on completion");
  atomic_set(&lldev->pending_tre_count, 0);
 }

 HIDMA_INCREMENT_ITERATOR(tre_iterator, HIDMA_TRE_SIZE,
     lldev->tre_ring_size);
 lldev->tre_processed_off = tre_iterator;
 spin_unlock_irqrestore(&lldev->lock, flags);

 tre->err_info = err_info;
 tre->err_code = err_code;
 tre->queued = 0;

 kfifo_put(&lldev->handoff_fifo, tre);
 tasklet_schedule(&lldev->task);

 return 0;
}
