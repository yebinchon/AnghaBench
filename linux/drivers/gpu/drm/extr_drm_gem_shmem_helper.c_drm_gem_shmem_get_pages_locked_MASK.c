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
struct drm_gem_object {int dummy; } ;
struct drm_gem_shmem_object {struct page** pages; scalar_t__ pages_use_count; struct drm_gem_object base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct page**) ; 
 int FUNC2 (struct page**) ; 
 struct page** FUNC3 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC4(struct drm_gem_shmem_object *shmem)
{
	struct drm_gem_object *obj = &shmem->base;
	struct page **pages;

	if (shmem->pages_use_count++ > 0)
		return 0;

	pages = FUNC3(obj);
	if (FUNC1(pages)) {
		FUNC0("Failed to get pages (%ld)\n", FUNC2(pages));
		shmem->pages_use_count = 0;
		return FUNC2(pages);
	}

	shmem->pages = pages;

	return 0;
}