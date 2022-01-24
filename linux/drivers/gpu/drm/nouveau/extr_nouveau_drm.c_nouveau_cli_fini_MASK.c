#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nouveau_cli {TYPE_2__* drm; int /*<<< orphan*/  base; int /*<<< orphan*/  device; int /*<<< orphan*/  mmu; int /*<<< orphan*/  vmm; int /*<<< orphan*/  svm; int /*<<< orphan*/  worker; int /*<<< orphan*/  work; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_cli*) ; 

__attribute__((used)) static void
FUNC10(struct nouveau_cli *cli)
{
	/* All our channels are dead now, which means all the fences they
	 * own are signalled, and all callback functions have been called.
	 *
	 * So, after flushing the workqueue, there should be nothing left.
	 */
	FUNC1(&cli->work);
	FUNC0(!FUNC2(&cli->worker));

	FUNC9(cli);
	FUNC5(&cli->svm);
	FUNC5(&cli->vmm);
	FUNC8(&cli->mmu);
	FUNC7(&cli->device);
	FUNC3(&cli->drm->master.lock);
	FUNC6(&cli->base);
	FUNC4(&cli->drm->master.lock);
}