
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int pinned_vm; } ;


 unsigned int FOLL_LONGTERM ;
 unsigned int FOLL_WRITE ;
 int atomic64_add (int,int *) ;
 int get_user_pages_fast (unsigned long,size_t,unsigned int,struct page**) ;

int hfi1_acquire_user_pages(struct mm_struct *mm, unsigned long vaddr, size_t npages,
       bool writable, struct page **pages)
{
 int ret;
 unsigned int gup_flags = FOLL_LONGTERM | (writable ? FOLL_WRITE : 0);

 ret = get_user_pages_fast(vaddr, npages, gup_flags, pages);
 if (ret < 0)
  return ret;

 atomic64_add(ret, &mm->pinned_vm);

 return ret;
}
