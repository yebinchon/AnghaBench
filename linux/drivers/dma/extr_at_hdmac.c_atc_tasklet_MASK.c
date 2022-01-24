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
struct at_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATC_IS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct at_dma_chan*) ; 
 scalar_t__ FUNC1 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct at_dma_chan *atchan = (struct at_dma_chan *)data;
	unsigned long flags;

	FUNC4(&atchan->lock, flags);
	if (FUNC6(ATC_IS_ERROR, &atchan->status))
		FUNC3(atchan);
	else if (FUNC1(atchan))
		FUNC2(atchan);
	else
		FUNC0(atchan);

	FUNC5(&atchan->lock, flags);
}