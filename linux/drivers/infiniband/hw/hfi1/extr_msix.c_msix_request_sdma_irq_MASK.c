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
struct sdma_engine {int msix_intr; int /*<<< orphan*/  this_idx; int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_SDMA ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sdma_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sdma_interrupt ; 

int FUNC2(struct sdma_engine *sde)
{
	int nr;

	nr = FUNC0(sde->dd, sde, sdma_interrupt, NULL,
			      sde->this_idx, IRQ_SDMA);
	if (nr < 0)
		return nr;
	sde->msix_intr = nr;
	FUNC1(sde->dd, sde->this_idx, nr);

	return 0;
}