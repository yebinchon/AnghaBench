
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* import_attach; } ;
struct udl_gem_object {int vmapping; TYPE_2__ base; } ;
struct TYPE_3__ {int dmabuf; } ;


 int dma_buf_vunmap (int ,int ) ;
 int udl_gem_put_pages (struct udl_gem_object*) ;
 int vunmap (int ) ;

void udl_gem_vunmap(struct udl_gem_object *obj)
{
 if (obj->base.import_attach) {
  dma_buf_vunmap(obj->base.import_attach->dmabuf, obj->vmapping);
  return;
 }

 vunmap(obj->vmapping);

 udl_gem_put_pages(obj);
}
