
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* import_attach; } ;
struct etnaviv_gem_object {int sgt; TYPE_2__ base; scalar_t__ pages; scalar_t__ vaddr; } ;
struct TYPE_3__ {int dmabuf; } ;


 int dma_buf_vunmap (int ,scalar_t__) ;
 int drm_prime_gem_destroy (TYPE_2__*,int ) ;
 int kvfree (scalar_t__) ;

__attribute__((used)) static void etnaviv_gem_prime_release(struct etnaviv_gem_object *etnaviv_obj)
{
 if (etnaviv_obj->vaddr)
  dma_buf_vunmap(etnaviv_obj->base.import_attach->dmabuf,
          etnaviv_obj->vaddr);




 if (etnaviv_obj->pages)
  kvfree(etnaviv_obj->pages);

 drm_prime_gem_destroy(&etnaviv_obj->base, etnaviv_obj->sgt);
}
