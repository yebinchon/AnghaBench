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
struct host1x_waitlist {int /*<<< orphan*/  thresh; int /*<<< orphan*/  count; struct host1x_channel* data; } ;
struct host1x_channel {int /*<<< orphan*/  dev; int /*<<< orphan*/  cdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct host1x_waitlist *waiter)
{
	struct host1x_channel *channel = waiter->data;

	FUNC1(&channel->cdma);

	/*  Add nr_completed to trace */
	FUNC2(FUNC0(channel->dev),
					     waiter->count, waiter->thresh);

}