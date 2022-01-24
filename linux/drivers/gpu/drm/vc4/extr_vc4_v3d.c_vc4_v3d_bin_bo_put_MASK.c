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
struct vc4_dev {int /*<<< orphan*/  bin_bo_lock; int /*<<< orphan*/  bin_bo_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  bin_bo_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct vc4_dev *vc4)
{
	FUNC1(&vc4->bin_bo_lock);
	FUNC0(&vc4->bin_bo_kref, bin_bo_release);
	FUNC2(&vc4->bin_bo_lock);
}