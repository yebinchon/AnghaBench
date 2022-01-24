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
typedef  int u64 ;
struct sdma_engine {int idle_mask; int progress_mask; int int_mask; int /*<<< orphan*/  head_lock; int /*<<< orphan*/  sdma_int_cnt; int /*<<< orphan*/  progress_int_cnt; int /*<<< orphan*/  idle_int_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  sdma_desct_intr ; 
 int /*<<< orphan*/  FUNC0 (struct sdma_engine*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdma_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdma_engine*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct sdma_engine *sde, u64 status)
{
	FUNC2(sde, status);
	FUNC3(&sde->head_lock);
	FUNC1(sde, sdma_desct_intr);
	if (status & sde->idle_mask)
		sde->idle_int_cnt++;
	else if (status & sde->progress_mask)
		sde->progress_int_cnt++;
	else if (status & sde->int_mask)
		sde->sdma_int_cnt++;
	FUNC0(sde, status);
	FUNC4(&sde->head_lock);
}