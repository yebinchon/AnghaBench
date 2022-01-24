#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ttm_mem_global {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {unsigned int max_size; int /*<<< orphan*/  alloc_size; int /*<<< orphan*/  small; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; TYPE_1__ options; int /*<<< orphan*/  uc_pool_huge; int /*<<< orphan*/  wc_pool_huge; int /*<<< orphan*/  uc_pool_dma32; int /*<<< orphan*/  wc_pool_dma32; int /*<<< orphan*/  uc_pool; int /*<<< orphan*/  wc_pool; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_HIGHUSER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_TRANSHUGE_LIGHT ; 
 int GFP_USER ; 
 unsigned int HPAGE_PMD_ORDER ; 
 int /*<<< orphan*/  NUM_PAGES_TO_ALLOC ; 
 int /*<<< orphan*/  SMALL_ALLOCATION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int __GFP_COMP ; 
 int __GFP_KSWAPD_RECLAIM ; 
 int __GFP_MOVABLE ; 
 int __GFP_NORETRY ; 
 TYPE_2__* _manager ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,unsigned int) ; 
 int /*<<< orphan*/  ttm_pool_kobj_type ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct ttm_mem_global *glob, unsigned max_pages)
{
	int ret;
#ifdef CONFIG_TRANSPARENT_HUGEPAGE
	unsigned order = HPAGE_PMD_ORDER;
#else
	unsigned order = 0;
#endif

	FUNC0(_manager);

	FUNC4("Initializing pool allocator\n");

	_manager = FUNC3(sizeof(*_manager), GFP_KERNEL);
	if (!_manager)
		return -ENOMEM;

	FUNC5(&_manager->wc_pool, GFP_HIGHUSER, "wc", 0);

	FUNC5(&_manager->uc_pool, GFP_HIGHUSER, "uc", 0);

	FUNC5(&_manager->wc_pool_dma32,
				  GFP_USER | GFP_DMA32, "wc dma", 0);

	FUNC5(&_manager->uc_pool_dma32,
				  GFP_USER | GFP_DMA32, "uc dma", 0);

	FUNC5(&_manager->wc_pool_huge,
				  (GFP_TRANSHUGE_LIGHT | __GFP_NORETRY |
				   __GFP_KSWAPD_RECLAIM) &
				  ~(__GFP_MOVABLE | __GFP_COMP),
				  "wc huge", order);

	FUNC5(&_manager->uc_pool_huge,
				  (GFP_TRANSHUGE_LIGHT | __GFP_NORETRY |
				   __GFP_KSWAPD_RECLAIM) &
				  ~(__GFP_MOVABLE | __GFP_COMP)
				  , "uc huge", order);

	_manager->options.max_size = max_pages;
	_manager->options.small = SMALL_ALLOCATION;
	_manager->options.alloc_size = NUM_PAGES_TO_ALLOC;

	ret = FUNC1(&_manager->kobj, &ttm_pool_kobj_type,
				   &glob->kobj, "pool");
	if (FUNC7(ret != 0))
		goto error;

	ret = FUNC6(_manager);
	if (FUNC7(ret != 0))
		goto error;
	return 0;

error:
	FUNC2(&_manager->kobj);
	_manager = NULL;
	return ret;
}