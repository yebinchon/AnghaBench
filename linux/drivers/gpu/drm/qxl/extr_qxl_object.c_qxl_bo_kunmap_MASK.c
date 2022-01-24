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
struct qxl_bo {scalar_t__ map_count; int /*<<< orphan*/  kmap; int /*<<< orphan*/ * kptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct qxl_bo *bo)
{
	if (bo->kptr == NULL)
		return;
	bo->map_count--;
	if (bo->map_count > 0)
		return;
	bo->kptr = NULL;
	FUNC0(&bo->kmap);
}