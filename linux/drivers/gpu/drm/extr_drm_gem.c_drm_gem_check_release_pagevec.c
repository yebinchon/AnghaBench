
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;


 int __pagevec_release (struct pagevec*) ;
 int check_move_unevictable_pages (struct pagevec*) ;
 int cond_resched () ;

__attribute__((used)) static void drm_gem_check_release_pagevec(struct pagevec *pvec)
{
 check_move_unevictable_pages(pvec);
 __pagevec_release(pvec);
 cond_resched();
}
