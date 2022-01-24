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
struct ttm_tt {int /*<<< orphan*/  pages; int /*<<< orphan*/  num_pages; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC1(struct ttm_tt *ttm)
{
	ttm->pages = FUNC0(ttm->num_pages, sizeof(void*),
			GFP_KERNEL | __GFP_ZERO);
	if (!ttm->pages)
		return -ENOMEM;
	return 0;
}