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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_object_device {int /*<<< orphan*/  idr; } ;
struct ttm_base_object {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 struct ttm_base_object* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

struct ttm_base_object *
FUNC4(struct ttm_object_device *tdev, uint32_t key)
{
	struct ttm_base_object *base;

	FUNC2();
	base = FUNC0(&tdev->idr, key);

	if (base && !FUNC1(&base->refcount))
		base = NULL;
	FUNC3();

	return base;
}