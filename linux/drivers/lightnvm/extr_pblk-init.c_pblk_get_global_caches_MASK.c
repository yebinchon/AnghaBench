#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ pblk_caches ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret = 0;

	FUNC2(&pblk_caches.mutex);

	if (FUNC0(&pblk_caches.kref))
		goto out;

	ret = FUNC4();
	if (!ret)
		FUNC1(&pblk_caches.kref);

out:
	FUNC3(&pblk_caches.mutex);
	return ret;
}