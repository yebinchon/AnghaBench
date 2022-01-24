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
struct d40_desc {scalar_t__ lli_current; scalar_t__ lli_len; scalar_t__ cyclic; } ;
struct d40_chan {int busy; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  pending_tx; TYPE_1__* base; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d40_chan*,struct d40_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct d40_chan*,struct d40_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct d40_desc*) ; 
 struct d40_desc* FUNC3 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct d40_chan*,struct d40_desc*) ; 
 int /*<<< orphan*/ * FUNC5 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct d40_chan *d40c)
{
	struct d40_desc *d40d;

	/* Get first active entry from list */
	d40d = FUNC3(d40c);

	if (d40d == NULL)
		return;

	if (d40d->cyclic) {
		/*
		 * If this was a paritially loaded list, we need to reloaded
		 * it, and only when the list is completed.  We need to check
		 * for done because the interrupt will hit for every link, and
		 * not just the last one.
		 */
		if (d40d->lli_current < d40d->lli_len
		    && !FUNC8(d40c)
		    && !FUNC6(d40c)) {
			FUNC4(d40c, d40d);
			FUNC1(d40c, d40d);
			(void) FUNC7(d40c);

			if (d40d->lli_current == d40d->lli_len)
				d40d->lli_current = 0;
		}
	} else {
		FUNC4(d40c, d40d);

		if (d40d->lli_current < d40d->lli_len) {
			FUNC1(d40c, d40d);
			/* Start dma job */
			(void) FUNC7(d40c);
			return;
		}

		if (FUNC5(d40c) == NULL) {
			d40c->busy = false;

			FUNC9(d40c->base->dev);
			FUNC10(d40c->base->dev);
		}

		FUNC2(d40d);
		FUNC0(d40c, d40d);
	}

	d40c->pending_tx++;
	FUNC11(&d40c->tasklet);

}