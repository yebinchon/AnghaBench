
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bch_search_cache ;
 int kmem_cache_destroy (int ) ;

void bch_request_exit(void)
{
 kmem_cache_destroy(bch_search_cache);
}
