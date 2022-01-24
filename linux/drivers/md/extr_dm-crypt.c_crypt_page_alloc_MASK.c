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
typedef  void page ;
struct crypt_config {int /*<<< orphan*/  n_allocated_pages; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_NORETRY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  dm_crypt_pages_per_client ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void *FUNC5(gfp_t gfp_mask, void *pool_data)
{
	struct crypt_config *cc = pool_data;
	struct page *page;

	if (FUNC4(FUNC3(&cc->n_allocated_pages, dm_crypt_pages_per_client) >= 0) &&
	    FUNC1(gfp_mask & __GFP_NORETRY))
		return NULL;

	page = FUNC0(gfp_mask);
	if (FUNC1(page != NULL))
		FUNC2(&cc->n_allocated_pages, 1);

	return page;
}