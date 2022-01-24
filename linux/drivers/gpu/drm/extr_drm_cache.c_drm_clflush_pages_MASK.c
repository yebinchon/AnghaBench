#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  X86_FEATURE_CLFLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct page**,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 

void
FUNC9(struct page *pages[], unsigned long num_pages)
{

#if defined(CONFIG_X86)
	if (static_cpu_has(X86_FEATURE_CLFLUSH)) {
		drm_cache_flush_clflush(pages, num_pages);
		return;
	}

	if (wbinvd_on_all_cpus())
		pr_err("Timed out waiting for cache flush\n");

#elif defined(__powerpc__)
	unsigned long i;
	for (i = 0; i < num_pages; i++) {
		struct page *page = pages[i];
		void *page_virtual;

		if (unlikely(page == NULL))
			continue;

		page_virtual = kmap_atomic(page);
		flush_dcache_range((unsigned long)page_virtual,
				   (unsigned long)page_virtual + PAGE_SIZE);
		kunmap_atomic(page_virtual);
	}
#else
	FUNC5("Architecture has no drm_cache.c support\n");
	FUNC0(1);
#endif
}