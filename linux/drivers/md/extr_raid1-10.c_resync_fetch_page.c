
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resync_pages {struct page** pages; } ;
struct page {int dummy; } ;


 unsigned int RESYNC_PAGES ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static inline struct page *resync_fetch_page(struct resync_pages *rp,
          unsigned idx)
{
 if (WARN_ON_ONCE(idx >= RESYNC_PAGES))
  return ((void*)0);
 return rp->pages[idx];
}
