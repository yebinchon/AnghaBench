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
struct d40_desc {int dummy; } ;
struct d40_chan {int busy; TYPE_1__* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d40_chan*,struct d40_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct d40_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct d40_chan*,struct d40_desc*) ; 
 struct d40_desc* FUNC3 (struct d40_chan*) ; 
 int FUNC4 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct d40_desc *FUNC6(struct d40_chan *d40c)
{
	struct d40_desc *d40d;
	int err;

	/* Start queued jobs, if any */
	d40d = FUNC3(d40c);

	if (d40d != NULL) {
		if (!d40c->busy) {
			d40c->busy = true;
			FUNC5(d40c->base->dev);
		}

		/* Remove from queue */
		FUNC1(d40d);

		/* Add to active queue */
		FUNC2(d40c, d40d);

		/* Initiate DMA job */
		FUNC0(d40c, d40d);

		/* Start dma job */
		err = FUNC4(d40c);

		if (err)
			return NULL;
	}

	return d40d;
}