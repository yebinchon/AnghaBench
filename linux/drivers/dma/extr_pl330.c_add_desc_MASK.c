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
struct list_head {int dummy; } ;
struct dma_pl330_desc {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_pl330_desc*) ; 
 struct dma_pl330_desc* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct list_head *pool, spinlock_t *lock,
		    gfp_t flg, int count)
{
	struct dma_pl330_desc *desc;
	unsigned long flags;
	int i;

	desc = FUNC1(count, sizeof(*desc), flg);
	if (!desc)
		return 0;

	FUNC3(lock, flags);

	for (i = 0; i < count; i++) {
		FUNC0(&desc[i]);
		FUNC2(&desc[i].node, pool);
	}

	FUNC4(lock, flags);

	return count;
}