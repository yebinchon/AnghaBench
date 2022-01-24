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
struct drm_dp_mst_branch {int /*<<< orphan*/  malloc_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_dp_mst_branch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct drm_dp_mst_branch *mstb)
{
	FUNC1(&mstb->malloc_kref);
	FUNC0("mstb %p (%d)\n", mstb, FUNC2(&mstb->malloc_kref));
}