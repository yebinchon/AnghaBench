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
struct dma_resv {int /*<<< orphan*/  fence_excl; int /*<<< orphan*/  fence; int /*<<< orphan*/  seq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reservation_seqcount_class ; 
 int /*<<< orphan*/  reservation_seqcount_string ; 
 int /*<<< orphan*/  reservation_ww_class ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct dma_resv *obj)
{
	FUNC2(&obj->lock, &reservation_ww_class);

	FUNC1(&obj->seq, reservation_seqcount_string,
			&reservation_seqcount_class);
	FUNC0(obj->fence, NULL);
	FUNC0(obj->fence_excl, NULL);
}