
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int pinned_vm; } ;


 int atomic64_sub (size_t,int *) ;
 int put_user_pages_dirty_lock (struct page**,size_t,int) ;

void hfi1_release_user_pages(struct mm_struct *mm, struct page **p,
        size_t npages, bool dirty)
{
 put_user_pages_dirty_lock(p, npages, dirty);

 if (mm) {
  atomic64_sub(npages, &mm->pinned_vm);
 }
}
