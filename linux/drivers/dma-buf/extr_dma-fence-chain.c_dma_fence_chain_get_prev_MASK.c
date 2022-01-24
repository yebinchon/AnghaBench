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
struct dma_fence_chain {int /*<<< orphan*/  prev; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct dma_fence* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static struct dma_fence *FUNC3(struct dma_fence_chain *chain)
{
	struct dma_fence *prev;

	FUNC1();
	prev = FUNC0(&chain->prev);
	FUNC2();
	return prev;
}