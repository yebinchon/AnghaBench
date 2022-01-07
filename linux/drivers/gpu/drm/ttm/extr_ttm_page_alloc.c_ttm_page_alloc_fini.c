
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; int * pools; } ;


 int FREE_ALL_PAGES ;
 int NUM_POOLS ;
 TYPE_1__* _manager ;
 int kobject_put (int *) ;
 int pr_info (char*) ;
 int ttm_page_pool_free (int *,int ,int) ;
 int ttm_pool_mm_shrink_fini (TYPE_1__*) ;

void ttm_page_alloc_fini(void)
{
 int i;

 pr_info("Finalizing pool allocator\n");
 ttm_pool_mm_shrink_fini(_manager);


 for (i = 0; i < NUM_POOLS; ++i)
  ttm_page_pool_free(&_manager->pools[i], FREE_ALL_PAGES, 1);

 kobject_put(&_manager->kobj);
 _manager = ((void*)0);
}
