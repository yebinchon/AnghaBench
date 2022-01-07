
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int n_allocated_pages; } ;


 int __free_page (void*) ;
 int percpu_counter_sub (int *,int) ;

__attribute__((used)) static void crypt_page_free(void *page, void *pool_data)
{
 struct crypt_config *cc = pool_data;

 __free_page(page);
 percpu_counter_sub(&cc->n_allocated_pages, 1);
}
