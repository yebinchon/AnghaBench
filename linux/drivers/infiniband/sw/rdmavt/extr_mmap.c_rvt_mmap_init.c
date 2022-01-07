
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_dev_info {int mmap_offset_lock; int mmap_offset; int pending_lock; int pending_mmaps; } ;


 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int spin_lock_init (int *) ;

void rvt_mmap_init(struct rvt_dev_info *rdi)
{
 INIT_LIST_HEAD(&rdi->pending_mmaps);
 spin_lock_init(&rdi->pending_lock);
 rdi->mmap_offset = PAGE_SIZE;
 spin_lock_init(&rdi->mmap_offset_lock);
}
