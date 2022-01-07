
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d40_desc {int dummy; } ;
struct d40_chan {TYPE_1__* base; } ;
struct TYPE_2__ {int desc_slab; } ;


 int d40_lcla_free_all (struct d40_chan*,struct d40_desc*) ;
 int d40_pool_lli_free (struct d40_chan*,struct d40_desc*) ;
 int kmem_cache_free (int ,struct d40_desc*) ;

__attribute__((used)) static void d40_desc_free(struct d40_chan *d40c, struct d40_desc *d40d)
{

 d40_pool_lli_free(d40c, d40d);
 d40_lcla_free_all(d40c, d40d);
 kmem_cache_free(d40c->base->desc_slab, d40d);
}
