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
struct vc4_bo {scalar_t__ madv; int /*<<< orphan*/  madv_lock; int /*<<< orphan*/  usecnt; } ;

/* Variables and functions */
 scalar_t__ VC4_MADV_DONTNEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vc4_bo*) ; 

void FUNC5(struct vc4_bo *bo)
{
	/* Fast path: if the BO is still retained by someone, no need to test
	 * the madv value.
	 */
	if (FUNC3(&bo->usecnt))
		return;

	FUNC0(&bo->madv_lock);
	if (FUNC2(&bo->usecnt) &&
	    bo->madv == VC4_MADV_DONTNEED)
		FUNC4(bo);
	FUNC1(&bo->madv_lock);
}