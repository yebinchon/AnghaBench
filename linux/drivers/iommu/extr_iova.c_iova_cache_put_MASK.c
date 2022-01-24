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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  iova_cache ; 
 int /*<<< orphan*/  iova_cache_mutex ; 
 int /*<<< orphan*/  iova_cache_users ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	FUNC2(&iova_cache_mutex);
	if (FUNC0(!iova_cache_users)) {
		FUNC3(&iova_cache_mutex);
		return;
	}
	iova_cache_users--;
	if (!iova_cache_users)
		FUNC1(iova_cache);
	FUNC3(&iova_cache_mutex);
}