
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_block {int list; int flags; int data; int datalen; } ;
struct log_writes_c {int sectorsize; int log_kthread; int blocks_lock; int logging_blocks; int pending_blocks; } ;
struct log_write_entry {int dummy; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LOG_MARK_FLAG ;
 int atomic_inc (int *) ;
 int kfree (struct pending_block*) ;
 int kstrndup (char*,size_t,int ) ;
 struct pending_block* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strlen (int ) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int log_mark(struct log_writes_c *lc, char *data)
{
 struct pending_block *block;
 size_t maxsize = lc->sectorsize - sizeof(struct log_write_entry);

 block = kzalloc(sizeof(struct pending_block), GFP_KERNEL);
 if (!block) {
  DMERR("Error allocating pending block");
  return -ENOMEM;
 }

 block->data = kstrndup(data, maxsize - 1, GFP_KERNEL);
 if (!block->data) {
  DMERR("Error copying mark data");
  kfree(block);
  return -ENOMEM;
 }
 atomic_inc(&lc->pending_blocks);
 block->datalen = strlen(block->data);
 block->flags |= LOG_MARK_FLAG;
 spin_lock_irq(&lc->blocks_lock);
 list_add_tail(&block->list, &lc->logging_blocks);
 spin_unlock_irq(&lc->blocks_lock);
 wake_up_process(lc->log_kthread);
 return 0;
}
