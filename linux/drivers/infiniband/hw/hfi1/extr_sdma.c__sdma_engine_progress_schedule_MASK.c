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
struct sdma_engine {int /*<<< orphan*/  progress_mask; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 scalar_t__ CCE_INT_FORCE ; 
 int IS_SDMA_START ; 
 int /*<<< orphan*/  FUNC0 (struct sdma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(
	struct sdma_engine *sde)
{
	FUNC0(sde, sde->progress_mask);
	/* assume we have selected a good cpu */
	FUNC1(sde->dd,
		  CCE_INT_FORCE + (8 * (IS_SDMA_START / 64)),
		  sde->progress_mask);
}