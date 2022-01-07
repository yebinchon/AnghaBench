
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct etnaviv_gem_object {TYPE_1__ base; int lock; } ;


 scalar_t__ IS_ERR (struct page**) ;
 int PAGE_KERNEL ;
 int PAGE_SHIFT ;
 int VM_MAP ;
 struct page** etnaviv_gem_get_pages (struct etnaviv_gem_object*) ;
 int lockdep_assert_held (int *) ;
 int pgprot_writecombine (int ) ;
 void* vmap (struct page**,int,int ,int ) ;

__attribute__((used)) static void *etnaviv_gem_vmap_impl(struct etnaviv_gem_object *obj)
{
 struct page **pages;

 lockdep_assert_held(&obj->lock);

 pages = etnaviv_gem_get_pages(obj);
 if (IS_ERR(pages))
  return ((void*)0);

 return vmap(pages, obj->base.size >> PAGE_SHIFT,
   VM_MAP, pgprot_writecombine(PAGE_KERNEL));
}
