
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_piter {size_t i; struct page** pages; } ;
struct page {int dummy; } ;



__attribute__((used)) static struct page *__vmw_piter_non_sg_page(struct vmw_piter *viter)
{
 return viter->pages[viter->i];
}
