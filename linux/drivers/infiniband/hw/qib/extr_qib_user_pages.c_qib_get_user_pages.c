
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int pinned_vm; int mmap_sem; } ;


 int CAP_IPC_LOCK ;
 int ENOMEM ;
 int FOLL_FORCE ;
 int FOLL_LONGTERM ;
 int FOLL_WRITE ;
 unsigned long PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int RLIMIT_MEMLOCK ;
 int __qib_release_user_pages (struct page**,size_t,int ) ;
 unsigned long atomic64_add_return (size_t,int *) ;
 int atomic64_sub (size_t,int *) ;
 int capable (int ) ;
 TYPE_2__* current ;
 int down_read (int *) ;
 int get_user_pages (unsigned long,size_t,int,struct page**,int *) ;
 unsigned long rlimit (int ) ;
 int up_read (int *) ;

int qib_get_user_pages(unsigned long start_page, size_t num_pages,
         struct page **p)
{
 unsigned long locked, lock_limit;
 size_t got;
 int ret;

 lock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
 locked = atomic64_add_return(num_pages, &current->mm->pinned_vm);

 if (locked > lock_limit && !capable(CAP_IPC_LOCK)) {
  ret = -ENOMEM;
  goto bail;
 }

 down_read(&current->mm->mmap_sem);
 for (got = 0; got < num_pages; got += ret) {
  ret = get_user_pages(start_page + got * PAGE_SIZE,
         num_pages - got,
         FOLL_LONGTERM | FOLL_WRITE | FOLL_FORCE,
         p + got, ((void*)0));
  if (ret < 0) {
   up_read(&current->mm->mmap_sem);
   goto bail_release;
  }
 }
 up_read(&current->mm->mmap_sem);

 return 0;
bail_release:
 __qib_release_user_pages(p, got, 0);
bail:
 atomic64_sub(num_pages, &current->mm->pinned_vm);
 return ret;
}
