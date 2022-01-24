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
struct host1x_cdma {scalar_t__ event; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; struct push_buffer push_buffer; } ;
struct host1x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CDMA_EVENT_NONE ; 
 scalar_t__ CDMA_EVENT_PUSH_BUFFER_SPACE ; 
 TYPE_1__* FUNC0 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x*,struct host1x_cdma*) ; 
 unsigned int FUNC3 (struct push_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct host1x *host1x,
				      struct host1x_cdma *cdma,
				      unsigned int needed)
{
	while (true) {
		struct push_buffer *pb = &cdma->push_buffer;
		unsigned int space;

		space = FUNC3(pb);
		if (space >= needed)
			break;

		FUNC7(FUNC1(FUNC0(cdma)->dev),
				       CDMA_EVENT_PUSH_BUFFER_SPACE);

		FUNC2(host1x, cdma);

		/* If somebody has managed to already start waiting, yield */
		if (cdma->event != CDMA_EVENT_NONE) {
			FUNC5(&cdma->lock);
			FUNC6();
			FUNC4(&cdma->lock);
			continue;
		}

		cdma->event = CDMA_EVENT_PUSH_BUFFER_SPACE;

		FUNC5(&cdma->lock);
		FUNC8(&cdma->complete);
		FUNC4(&cdma->lock);
	}

	return 0;
}