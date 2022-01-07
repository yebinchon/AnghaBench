
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; TYPE_1__* import_attach; } ;
struct udl_gem_object {scalar_t__ vmapping; int pages; TYPE_2__ base; } ;
struct TYPE_3__ {int dmabuf; } ;


 int ENOMEM ;
 int PAGE_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ dma_buf_vmap (int ) ;
 int udl_gem_get_pages (struct udl_gem_object*) ;
 scalar_t__ vmap (int ,int,int ,int ) ;

int udl_gem_vmap(struct udl_gem_object *obj)
{
 int page_count = obj->base.size / PAGE_SIZE;
 int ret;

 if (obj->base.import_attach) {
  obj->vmapping = dma_buf_vmap(obj->base.import_attach->dmabuf);
  if (!obj->vmapping)
   return -ENOMEM;
  return 0;
 }

 ret = udl_gem_get_pages(obj);
 if (ret)
  return ret;

 obj->vmapping = vmap(obj->pages, page_count, 0, PAGE_KERNEL);
 if (!obj->vmapping)
  return -ENOMEM;
 return 0;
}
