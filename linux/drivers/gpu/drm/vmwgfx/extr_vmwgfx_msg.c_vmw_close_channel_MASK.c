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
struct rpc_channel {unsigned long cookie_high; unsigned long cookie_low; int channel_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned long) ; 
 int MESSAGE_STATUS_SUCCESS ; 
 int /*<<< orphan*/  VMW_HYPERVISOR_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,unsigned long,int,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  VMW_PORT_CMD_CLOSE_CHANNEL ; 

__attribute__((used)) static int FUNC2(struct rpc_channel *channel)
{
	unsigned long eax, ebx, ecx, edx, si, di;

	/* Set up additional parameters */
	si  = channel->cookie_high;
	di  = channel->cookie_low;

	FUNC1(VMW_PORT_CMD_CLOSE_CHANNEL,
		0, si, di,
		channel->channel_id << 16,
		VMW_HYPERVISOR_MAGIC,
		eax, ebx, ecx, edx, si, di);

	if ((FUNC0(ecx) & MESSAGE_STATUS_SUCCESS) == 0)
		return -EINVAL;

	return 0;
}