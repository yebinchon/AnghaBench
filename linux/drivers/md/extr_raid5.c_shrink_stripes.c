
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int * slab_cache; scalar_t__ max_nr_stripes; } ;


 scalar_t__ drop_one_stripe (struct r5conf*) ;
 int kmem_cache_destroy (int *) ;

__attribute__((used)) static void shrink_stripes(struct r5conf *conf)
{
 while (conf->max_nr_stripes &&
        drop_one_stripe(conf))
  ;

 kmem_cache_destroy(conf->slab_cache);
 conf->slab_cache = ((void*)0);
}
