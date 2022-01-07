
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_gem_object {struct page** pages; int base; } ;
struct page {int dummy; } ;


 scalar_t__ IS_ERR (struct page**) ;
 int PTR_ERR (struct page**) ;
 struct page** drm_gem_get_pages (int *) ;

int udl_gem_get_pages(struct udl_gem_object *obj)
{
 struct page **pages;

 if (obj->pages)
  return 0;

 pages = drm_gem_get_pages(&obj->base);
 if (IS_ERR(pages))
  return PTR_ERR(pages);

 obj->pages = pages;

 return 0;
}
