
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ import_attach; } ;
struct udl_gem_object {int * pages; TYPE_1__ base; } ;


 int drm_gem_put_pages (TYPE_1__*,int *,int,int) ;
 int kvfree (int *) ;

void udl_gem_put_pages(struct udl_gem_object *obj)
{
 if (obj->base.import_attach) {
  kvfree(obj->pages);
  obj->pages = ((void*)0);
  return;
 }

 drm_gem_put_pages(&obj->base, obj->pages, 0, 0);
 obj->pages = ((void*)0);
}
