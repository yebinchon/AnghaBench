
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int put_user_pages_dirty_lock (struct page**,size_t,int) ;

__attribute__((used)) static void __qib_release_user_pages(struct page **p, size_t num_pages,
         int dirty)
{
 put_user_pages_dirty_lock(p, num_pages, dirty);
}
