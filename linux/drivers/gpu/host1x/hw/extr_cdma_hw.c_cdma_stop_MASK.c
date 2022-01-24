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
struct host1x_channel {int dummy; } ;
struct host1x_cdma {int running; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDMA_EVENT_SYNC_QUEUE_EMPTY ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_DMACTRL ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_DMACTRL_DMASTOP ; 
 struct host1x_channel* FUNC0 (struct host1x_cdma*) ; 
 int /*<<< orphan*/  FUNC1 (struct host1x_cdma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct host1x_cdma *cdma)
{
	struct host1x_channel *ch = FUNC0(cdma);

	FUNC3(&cdma->lock);

	if (cdma->running) {
		FUNC1(cdma, CDMA_EVENT_SYNC_QUEUE_EMPTY);
		FUNC2(ch, HOST1X_CHANNEL_DMACTRL_DMASTOP,
				 HOST1X_CHANNEL_DMACTRL);
		cdma->running = false;
	}

	FUNC4(&cdma->lock);
}