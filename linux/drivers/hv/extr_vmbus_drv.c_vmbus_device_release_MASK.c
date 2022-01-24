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
struct vmbus_channel {int dummy; } ;
struct hv_device {struct vmbus_channel* channel; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel_mutex; } ;

/* Variables and functions */
 struct hv_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ vmbus_connection ; 

__attribute__((used)) static void FUNC5(struct device *device)
{
	struct hv_device *hv_dev = FUNC0(device);
	struct vmbus_channel *channel = hv_dev->channel;

	FUNC3(&vmbus_connection.channel_mutex);
	FUNC1(channel);
	FUNC4(&vmbus_connection.channel_mutex);
	FUNC2(hv_dev);
}