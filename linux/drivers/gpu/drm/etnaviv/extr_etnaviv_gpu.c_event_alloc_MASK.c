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
struct etnaviv_gpu {int /*<<< orphan*/  event_free; int /*<<< orphan*/  event_spinlock; int /*<<< orphan*/  event_bitmap; int /*<<< orphan*/ * event; int /*<<< orphan*/  dev; } ;
struct etnaviv_event {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ETNA_NR_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct etnaviv_gpu *gpu, unsigned nr_events,
	unsigned int *events)
{
	unsigned long timeout = FUNC4(10 * 10000);
	unsigned i, acquired = 0;

	for (i = 0; i < nr_events; i++) {
		unsigned long ret;

		ret = FUNC8(&gpu->event_free, timeout);

		if (!ret) {
			FUNC1(gpu->dev, "wait_for_completion_timeout failed");
			goto out;
		}

		acquired++;
		timeout = ret;
	}

	FUNC6(&gpu->event_spinlock);

	for (i = 0; i < nr_events; i++) {
		int event = FUNC2(gpu->event_bitmap, ETNA_NR_EVENTS);

		events[i] = event;
		FUNC3(&gpu->event[event], 0, sizeof(struct etnaviv_event));
		FUNC5(event, gpu->event_bitmap);
	}

	FUNC7(&gpu->event_spinlock);

	return 0;

out:
	for (i = 0; i < acquired; i++)
		FUNC0(&gpu->event_free);

	return -EBUSY;
}