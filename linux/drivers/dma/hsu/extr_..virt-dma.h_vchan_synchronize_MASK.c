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
struct virt_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/ * vd_terminated; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct virt_dma_chan *vc)
{
	unsigned long flags;

	FUNC2(&vc->task);

	FUNC0(&vc->lock, flags);
	if (vc->vd_terminated) {
		FUNC3(vc->vd_terminated);
		vc->vd_terminated = NULL;
	}
	FUNC1(&vc->lock, flags);
}