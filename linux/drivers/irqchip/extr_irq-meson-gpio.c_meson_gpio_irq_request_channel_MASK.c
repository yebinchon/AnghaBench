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
typedef  int /*<<< orphan*/  u32 ;
struct meson_gpio_irq_controller {int /*<<< orphan*/  lock; int /*<<< orphan*/ * channel_irqs; int /*<<< orphan*/  channel_map; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned int NUM_CHANNEL ; 
 unsigned long FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_gpio_irq_controller*,unsigned int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct meson_gpio_irq_controller *ctl,
			       unsigned long  hwirq,
			       u32 **channel_hwirq)
{
	unsigned int reg, idx;

	FUNC7(&ctl->lock);

	/* Find a free channel */
	idx = FUNC1(ctl->channel_map, NUM_CHANNEL);
	if (idx >= NUM_CHANNEL) {
		FUNC8(&ctl->lock);
		FUNC5("No channel available\n");
		return -ENOSPC;
	}

	/* Mark the channel as used */
	FUNC6(idx, ctl->channel_map);

	/*
	 * Setup the mux of the channel to route the signal of the pad
	 * to the appropriate input of the GIC
	 */
	reg = FUNC2(idx);
	FUNC3(ctl, reg,
				   0xff << FUNC0(idx),
				   hwirq << FUNC0(idx));

	/*
	 * Get the hwirq number assigned to this channel through
	 * a pointer the channel_irq table. The added benifit of this
	 * method is that we can also retrieve the channel index with
	 * it, using the table base.
	 */
	*channel_hwirq = &(ctl->channel_irqs[idx]);

	FUNC8(&ctl->lock);

	FUNC4("hwirq %lu assigned to channel %d - irq %u\n",
		 hwirq, idx, **channel_hwirq);

	return 0;
}