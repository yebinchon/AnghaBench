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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  DCE3_LVTMA_DATA_SYNCHRONIZATION ; 
 int /*<<< orphan*/  LVTMA_DATA_SYNCHRONIZATION ; 
 int /*<<< orphan*/  LVTMA_PFREQCHG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	if (FUNC0(rdev))
		FUNC1(DCE3_LVTMA_DATA_SYNCHRONIZATION, LVTMA_PFREQCHG, ~LVTMA_PFREQCHG);
	else
		FUNC1(LVTMA_DATA_SYNCHRONIZATION, LVTMA_PFREQCHG, ~LVTMA_PFREQCHG);
}