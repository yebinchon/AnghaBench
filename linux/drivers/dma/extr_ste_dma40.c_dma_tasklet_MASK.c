#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dmaengine_desc_callback {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct d40_desc {int is_in_client_list; int /*<<< orphan*/  node; TYPE_1__ txd; int /*<<< orphan*/  cyclic; } ;
struct d40_chan {scalar_t__ pending_tx; int /*<<< orphan*/  lock; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int DMA_PREP_INTERRUPT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct d40_chan*,struct d40_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct d40_desc*) ; 
 struct d40_desc* FUNC3 (struct d40_chan*) ; 
 struct d40_desc* FUNC4 (struct d40_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct d40_chan*,struct d40_desc*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmaengine_desc_callback*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct dmaengine_desc_callback*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(unsigned long data)
{
	struct d40_chan *d40c = (struct d40_chan *) data;
	struct d40_desc *d40d;
	unsigned long flags;
	bool callback_active;
	struct dmaengine_desc_callback cb;

	FUNC10(&d40c->lock, flags);

	/* Get first entry from the done list */
	d40d = FUNC4(d40c);
	if (d40d == NULL) {
		/* Check if we have reached here for cyclic job */
		d40d = FUNC3(d40c);
		if (d40d == NULL || !d40d->cyclic)
			goto check_pending_tx;
	}

	if (!d40d->cyclic)
		FUNC6(&d40d->txd);

	/*
	 * If terminating a channel pending_tx is set to zero.
	 * This prevents any finished active jobs to return to the client.
	 */
	if (d40c->pending_tx == 0) {
		FUNC11(&d40c->lock, flags);
		return;
	}

	/* Callback to client */
	callback_active = !!(d40d->txd.flags & DMA_PREP_INTERRUPT);
	FUNC8(&d40d->txd, &cb);

	if (!d40d->cyclic) {
		if (FUNC0(&d40d->txd)) {
			FUNC2(d40d);
			FUNC1(d40c, d40d);
		} else if (!d40d->is_in_client_list) {
			FUNC2(d40d);
			FUNC5(d40c, d40d);
			FUNC9(&d40d->node, &d40c->client);
			d40d->is_in_client_list = true;
		}
	}

	d40c->pending_tx--;

	if (d40c->pending_tx)
		FUNC12(&d40c->tasklet);

	FUNC11(&d40c->lock, flags);

	if (callback_active)
		FUNC7(&cb, NULL);

	return;
 check_pending_tx:
	/* Rescue manouver if receiving double interrupts */
	if (d40c->pending_tx > 0)
		d40c->pending_tx--;
	FUNC11(&d40c->lock, flags);
}