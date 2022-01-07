
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* import_attach; } ;
struct etnaviv_gem_object {TYPE_2__ base; int lock; } ;
struct TYPE_3__ {int dmabuf; } ;


 void* dma_buf_vmap (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void *etnaviv_gem_prime_vmap_impl(struct etnaviv_gem_object *etnaviv_obj)
{
 lockdep_assert_held(&etnaviv_obj->lock);

 return dma_buf_vmap(etnaviv_obj->base.import_attach->dmabuf);
}
