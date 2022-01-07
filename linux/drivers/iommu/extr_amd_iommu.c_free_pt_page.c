
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct page* freelist; } ;


 struct page* virt_to_page (void*) ;

__attribute__((used)) static struct page *free_pt_page(unsigned long pt, struct page *freelist)
{
 struct page *p = virt_to_page((void *)pt);

 p->freelist = freelist;

 return p;
}
