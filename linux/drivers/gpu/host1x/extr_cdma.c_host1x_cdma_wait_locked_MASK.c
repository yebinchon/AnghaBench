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
struct push_buffer {int dummy; } ;
struct host1x_cdma {int event; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; int /*<<< orphan*/  sync_queue; struct push_buffer push_buffer; } ;
typedef  enum cdma_event { ____Placeholder_cdma_event } cdma_event ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CDMA_EVENT_NONE ; 
#define  CDMA_EVENT_PUSH_BUFFER_SPACE 129 
#define  CDMA_EVENT_SYNC_QUEUE_EMPTY 128 
 unsigned int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct push_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

unsigned int FUNC10(struct host1x_cdma *cdma,
				     enum cdma_event event)
{
	for (;;) {
		struct push_buffer *pb = &cdma->push_buffer;
		unsigned int space;

		switch (event) {
		case CDMA_EVENT_SYNC_QUEUE_EMPTY:
			space = FUNC4(&cdma->sync_queue) ? 1 : 0;
			break;

		case CDMA_EVENT_PUSH_BUFFER_SPACE:
			space = FUNC3(pb);
			break;

		default:
			FUNC0(1);
			return -EINVAL;
		}

		if (space)
			return space;

		FUNC8(FUNC2(FUNC1(cdma)->dev),
				       event);

		/* If somebody has managed to already start waiting, yield */
		if (cdma->event != CDMA_EVENT_NONE) {
			FUNC6(&cdma->lock);
			FUNC7();
			FUNC5(&cdma->lock);
			continue;
		}

		cdma->event = event;

		FUNC6(&cdma->lock);
		FUNC9(&cdma->complete);
		FUNC5(&cdma->lock);
	}

	return 0;
}