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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  msgtype; } ;
struct vmbus_channel_relid_released {TYPE_1__ header; int /*<<< orphan*/  child_relid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNELMSG_RELID_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (struct vmbus_channel_relid_released*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel_relid_released*,int) ; 
 int FUNC2 (struct vmbus_channel_relid_released*,int,int) ; 

__attribute__((used)) static void FUNC3(u32 relid)
{
	struct vmbus_channel_relid_released msg;
	int ret;

	FUNC0(&msg, 0, sizeof(struct vmbus_channel_relid_released));
	msg.child_relid = relid;
	msg.header.msgtype = CHANNELMSG_RELID_RELEASED;
	ret = FUNC2(&msg, sizeof(struct vmbus_channel_relid_released),
			     true);

	FUNC1(&msg, ret);
}