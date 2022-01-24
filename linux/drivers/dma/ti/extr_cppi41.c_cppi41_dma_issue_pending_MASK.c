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
struct dma_chan {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct cppi41_dd {TYPE_1__ ddev; int /*<<< orphan*/  lock; int /*<<< orphan*/  is_suspended; int /*<<< orphan*/  pending; } ;
struct cppi41_channel {int /*<<< orphan*/  node; struct cppi41_dd* cdd; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct cppi41_dd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cppi41_channel* FUNC9 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC10(struct dma_chan *chan)
{
	struct cppi41_channel *c = FUNC9(chan);
	struct cppi41_dd *cdd = c->cdd;
	unsigned long flags;
	int error;

	error = FUNC3(cdd->ddev.dev);
	if ((error != -EINPROGRESS) && error < 0) {
		FUNC6(cdd->ddev.dev);
		FUNC1(cdd->ddev.dev, "Failed to pm_runtime_get: %i\n",
			error);

		return;
	}

	FUNC7(&cdd->lock, flags);
	FUNC2(&c->node, &cdd->pending);
	if (!cdd->is_suspended)
		FUNC0(cdd);
	FUNC8(&cdd->lock, flags);

	FUNC4(cdd->ddev.dev);
	FUNC5(cdd->ddev.dev);
}