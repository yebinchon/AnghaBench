
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nr; struct page** pages; } ;
struct pagestash {int lock; TYPE_1__ pvec; } ;
struct page {int dummy; } ;


 scalar_t__ likely (size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct page *stash_pop_page(struct pagestash *stash)
{
 struct page *page = ((void*)0);

 spin_lock(&stash->lock);
 if (likely(stash->pvec.nr))
  page = stash->pvec.pages[--stash->pvec.nr];
 spin_unlock(&stash->lock);

 return page;
}
