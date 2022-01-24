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
struct dw_edma_chunk {struct dw_edma_burst* burst; scalar_t__ bursts_alloc; } ;
struct dw_edma_burst {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dw_edma_burst* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static struct dw_edma_burst *FUNC4(struct dw_edma_chunk *chunk)
{
	struct dw_edma_burst *burst;

	burst = FUNC1(sizeof(*burst), GFP_NOWAIT);
	if (FUNC3(!burst))
		return NULL;

	FUNC0(&burst->list);
	if (chunk->burst) {
		/* Create and add new element into the linked list */
		chunk->bursts_alloc++;
		FUNC2(&burst->list, &chunk->burst->list);
	} else {
		/* List head */
		chunk->bursts_alloc = 0;
		chunk->burst = burst;
	}

	return burst;
}