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
 int MESSAGE_STATUS_CPT ; 
 int MESSAGE_STATUS_HB ; 
 int MESSAGE_STATUS_SUCCESS ; 
 int RETRIES ; 
 int /*<<< orphan*/  VMW_HYPERVISOR_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,unsigned long,unsigned long,int,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  VMW_PORT_CMD_SENDSIZE ; 
 size_t FUNC2 (char const*) ; 
 unsigned long FUNC3 (struct rpc_channel*,char const*,int) ; 

__attribute__((used)) static int FUNC4(struct rpc_channel *channel, const char *msg)
{
	unsigned long eax, ebx, ecx, edx, si, di;
	size_t msg_len = FUNC2(msg);
	int retries = 0;

	while (retries < RETRIES) {
		retries++;

		/* Set up additional parameters */
		si  = channel->cookie_high;
		di  = channel->cookie_low;

		FUNC1(VMW_PORT_CMD_SENDSIZE,
			msg_len, si, di,
			channel->channel_id << 16,
			VMW_HYPERVISOR_MAGIC,
			eax, ebx, ecx, edx, si, di);

		if ((FUNC0(ecx) & MESSAGE_STATUS_SUCCESS) == 0) {
			/* Expected success. Give up. */
			return -EINVAL;
		}

		/* Send msg */
		ebx = FUNC3(channel, msg,
				      !!(FUNC0(ecx) & MESSAGE_STATUS_HB));

		if ((FUNC0(ebx) & MESSAGE_STATUS_SUCCESS) != 0) {
			return 0;
		} else if ((FUNC0(ebx) & MESSAGE_STATUS_CPT) != 0) {
			/* A checkpoint occurred. Retry. */
			continue;
		} else {
			break;
		}
	}

	return -EINVAL;
}