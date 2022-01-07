
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ttm_mem_global {int kobj; } ;
struct TYPE_6__ {unsigned int max_size; int alloc_size; int small; } ;
struct TYPE_7__ {int kobj; TYPE_1__ options; int uc_pool_huge; int wc_pool_huge; int uc_pool_dma32; int wc_pool_dma32; int uc_pool; int wc_pool; } ;


 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int GFP_TRANSHUGE_LIGHT ;
 int GFP_USER ;
 unsigned int HPAGE_PMD_ORDER ;
 int NUM_PAGES_TO_ALLOC ;
 int SMALL_ALLOCATION ;
 int WARN_ON (TYPE_2__*) ;
 int __GFP_COMP ;
 int __GFP_KSWAPD_RECLAIM ;
 int __GFP_MOVABLE ;
 int __GFP_NORETRY ;
 TYPE_2__* _manager ;
 int kobject_init_and_add (int *,int *,int *,char*) ;
 int kobject_put (int *) ;
 TYPE_2__* kzalloc (int,int ) ;
 int pr_info (char*) ;
 int ttm_page_pool_init_locked (int *,int,char*,unsigned int) ;
 int ttm_pool_kobj_type ;
 int ttm_pool_mm_shrink_init (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

int ttm_page_alloc_init(struct ttm_mem_global *glob, unsigned max_pages)
{
 int ret;



 unsigned order = 0;


 WARN_ON(_manager);

 pr_info("Initializing pool allocator\n");

 _manager = kzalloc(sizeof(*_manager), GFP_KERNEL);
 if (!_manager)
  return -ENOMEM;

 ttm_page_pool_init_locked(&_manager->wc_pool, GFP_HIGHUSER, "wc", 0);

 ttm_page_pool_init_locked(&_manager->uc_pool, GFP_HIGHUSER, "uc", 0);

 ttm_page_pool_init_locked(&_manager->wc_pool_dma32,
      GFP_USER | GFP_DMA32, "wc dma", 0);

 ttm_page_pool_init_locked(&_manager->uc_pool_dma32,
      GFP_USER | GFP_DMA32, "uc dma", 0);

 ttm_page_pool_init_locked(&_manager->wc_pool_huge,
      (GFP_TRANSHUGE_LIGHT | __GFP_NORETRY |
       __GFP_KSWAPD_RECLAIM) &
      ~(__GFP_MOVABLE | __GFP_COMP),
      "wc huge", order);

 ttm_page_pool_init_locked(&_manager->uc_pool_huge,
      (GFP_TRANSHUGE_LIGHT | __GFP_NORETRY |
       __GFP_KSWAPD_RECLAIM) &
      ~(__GFP_MOVABLE | __GFP_COMP)
      , "uc huge", order);

 _manager->options.max_size = max_pages;
 _manager->options.small = SMALL_ALLOCATION;
 _manager->options.alloc_size = NUM_PAGES_TO_ALLOC;

 ret = kobject_init_and_add(&_manager->kobj, &ttm_pool_kobj_type,
       &glob->kobj, "pool");
 if (unlikely(ret != 0))
  goto error;

 ret = ttm_pool_mm_shrink_init(_manager);
 if (unlikely(ret != 0))
  goto error;
 return 0;

error:
 kobject_put(&_manager->kobj);
 _manager = ((void*)0);
 return ret;
}
