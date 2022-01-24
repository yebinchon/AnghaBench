#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ring_buffer_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  ring_buffer_mutex; } ;
struct vmbus_channel {TYPE_2__ outbound; TYPE_1__ inbound; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct vmbus_channel *channel)
{
	FUNC0(&channel->inbound.ring_buffer_mutex);
	FUNC0(&channel->outbound.ring_buffer_mutex);
}