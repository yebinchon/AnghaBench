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
struct cppi41_dd {TYPE_1__ ddev; int /*<<< orphan*/  pending; } ;
struct cppi41_channel {struct cppi41_dd* cdd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cppi41_channel* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *chan)
{
	struct cppi41_channel *c = FUNC6(chan);
	struct cppi41_dd *cdd = c->cdd;
	int error;

	error = FUNC2(cdd->ddev.dev);
	if (error < 0) {
		FUNC5(cdd->ddev.dev);

		return;
	}

	FUNC0(!FUNC1(&cdd->pending));

	FUNC3(cdd->ddev.dev);
	FUNC4(cdd->ddev.dev);
}