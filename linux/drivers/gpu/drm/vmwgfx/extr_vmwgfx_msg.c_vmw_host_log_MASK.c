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
struct rpc_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RPCI_PROTOCOL_NUM ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_channel*) ; 
 int /*<<< orphan*/  vmw_msg_enabled ; 
 scalar_t__ FUNC4 (struct rpc_channel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct rpc_channel*,char*) ; 

int FUNC6(const char *log)
{
	struct rpc_channel channel;
	char *msg;
	int ret = 0;


	if (!vmw_msg_enabled)
		return -ENODEV;

	if (!log)
		return ret;

	msg = FUNC1(GFP_KERNEL, "log %s", log);
	if (!msg) {
		FUNC0("Cannot allocate memory for host log message.\n");
		return -ENOMEM;
	}

	if (FUNC4(&channel, RPCI_PROTOCOL_NUM))
		goto out_open;

	if (FUNC5(&channel, msg))
		goto out_msg;

	FUNC3(&channel);
	FUNC2(msg);

	return 0;

out_msg:
	FUNC3(&channel);
out_open:
	FUNC2(msg);
	FUNC0("Failed to send host log message.\n");

	return -EINVAL;
}