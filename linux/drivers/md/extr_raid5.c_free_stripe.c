
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {scalar_t__ ppl_page; } ;
struct kmem_cache {int dummy; } ;


 int __free_page (scalar_t__) ;
 int kmem_cache_free (struct kmem_cache*,struct stripe_head*) ;

__attribute__((used)) static void free_stripe(struct kmem_cache *sc, struct stripe_head *sh)
{
 if (sh->ppl_page)
  __free_page(sh->ppl_page);
 kmem_cache_free(sc, sh);
}
