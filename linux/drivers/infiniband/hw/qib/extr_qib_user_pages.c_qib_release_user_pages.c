
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int pinned_vm; } ;


 int __qib_release_user_pages (struct page**,size_t,int) ;
 int atomic64_sub (size_t,int *) ;
 TYPE_2__* current ;

void qib_release_user_pages(struct page **p, size_t num_pages)
{
 __qib_release_user_pages(p, num_pages, 1);


 if (current->mm)
  atomic64_sub(num_pages, &current->mm->pinned_vm);
}
