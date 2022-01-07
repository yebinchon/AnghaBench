
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_gem_object {int pages; int num_pages; } ;
struct page {int dummy; } ;


 int DIV_ROUND_UP (size_t,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int kvmalloc_array (int ,int,int ) ;

__attribute__((used)) static int gem_alloc_pages_array(struct xen_gem_object *xen_obj,
     size_t buf_size)
{
 xen_obj->num_pages = DIV_ROUND_UP(buf_size, PAGE_SIZE);
 xen_obj->pages = kvmalloc_array(xen_obj->num_pages,
     sizeof(struct page *), GFP_KERNEL);
 return !xen_obj->pages ? -ENOMEM : 0;
}
