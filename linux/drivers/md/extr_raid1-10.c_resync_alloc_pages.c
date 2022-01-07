
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resync_pages {int * pages; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int RESYNC_PAGES ;
 int alloc_page (int ) ;
 int put_page (int ) ;

__attribute__((used)) static inline int resync_alloc_pages(struct resync_pages *rp,
         gfp_t gfp_flags)
{
 int i;

 for (i = 0; i < RESYNC_PAGES; i++) {
  rp->pages[i] = alloc_page(gfp_flags);
  if (!rp->pages[i])
   goto out_free;
 }

 return 0;

out_free:
 while (--i >= 0)
  put_page(rp->pages[i]);
 return -ENOMEM;
}
