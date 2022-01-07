
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppl_io_unit {int header_page; } ;
struct kmem_cache {int dummy; } ;


 int __free_page (int ) ;
 int kmem_cache_free (struct kmem_cache*,struct ppl_io_unit*) ;

__attribute__((used)) static void ppl_io_pool_free(void *element, void *pool_data)
{
 struct kmem_cache *kc = pool_data;
 struct ppl_io_unit *io = element;

 __free_page(io->header_page);
 kmem_cache_free(kc, io);
}
