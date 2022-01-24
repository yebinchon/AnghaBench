#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pblk_line {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  free_lock; } ;
struct pblk {int /*<<< orphan*/  state; TYPE_1__ l_mg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBLK_STATE_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pblk *pblk, struct pblk_line *line)
{
	FUNC0(&pblk->l_mg.free_lock);

	FUNC2(pblk);
	pblk->state = PBLK_STATE_STOPPING;
	FUNC3(FUNC1(pblk), pblk->state);
}