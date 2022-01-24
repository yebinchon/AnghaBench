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
typedef  unsigned long u64 ;
typedef  size_t u32 ;
struct send_context {unsigned long free; size_t sr_tail; size_t sr_size; int /*<<< orphan*/  release_lock; TYPE_1__* sr; int /*<<< orphan*/  sr_head; int /*<<< orphan*/ * hw_free; } ;
struct pio_buf {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  sent_at; } ;
struct TYPE_2__ {struct pio_buf pbuf; } ;

/* Variables and functions */
 unsigned long CR_COUNTER_MASK ; 
 unsigned long CR_COUNTER_SHIFT ; 
 unsigned long CR_COUNTER_SMASK ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct send_context*) ; 
 scalar_t__ FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct send_context*,unsigned long) ; 

void FUNC10(struct send_context *sc)
{
	struct pio_buf *pbuf;
	u64 hw_free;
	u32 head, tail;
	unsigned long old_free;
	unsigned long free;
	unsigned long extra;
	unsigned long flags;
	int code;

	if (!sc)
		return;

	FUNC6(&sc->release_lock, flags);
	/* update free */
	hw_free = FUNC2(*sc->hw_free);		/* volatile read */
	old_free = sc->free;
	extra = (((hw_free & CR_COUNTER_SMASK) >> CR_COUNTER_SHIFT)
			- (old_free & CR_COUNTER_MASK))
				& CR_COUNTER_MASK;
	free = old_free + extra;
	FUNC9(sc, extra);

	/* call sent buffer callbacks */
	code = -1;				/* code not yet set */
	head = FUNC0(sc->sr_head);	/* snapshot the head */
	tail = sc->sr_tail;
	while (head != tail) {
		pbuf = &sc->sr[tail].pbuf;

		if (FUNC4(free, pbuf->sent_at)) {
			/* not sent yet */
			break;
		}
		if (pbuf->cb) {
			if (code < 0) /* fill in code on first user */
				code = FUNC1(hw_free);
			(*pbuf->cb)(pbuf->arg, code);
		}

		tail++;
		if (tail >= sc->sr_size)
			tail = 0;
	}
	sc->sr_tail = tail;
	/* make sure tail is updated before free */
	FUNC5();
	sc->free = free;
	FUNC7(&sc->release_lock, flags);
	FUNC3(sc);
}