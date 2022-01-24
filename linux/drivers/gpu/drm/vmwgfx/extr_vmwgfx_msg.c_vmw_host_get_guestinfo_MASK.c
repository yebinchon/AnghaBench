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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RPCI_PROTOCOL_NUM ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t FUNC3 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 size_t FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_channel*) ; 
 int /*<<< orphan*/  vmw_msg_enabled ; 
 scalar_t__ FUNC7 (struct rpc_channel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rpc_channel*,void*,size_t*) ; 
 scalar_t__ FUNC9 (struct rpc_channel*,char*) ; 

int FUNC10(const char *guest_info_param,
			   char *buffer, size_t *length)
{
	struct rpc_channel channel;
	char *msg, *reply = NULL;
	size_t reply_len = 0;

	if (!vmw_msg_enabled)
		return -ENODEV;

	if (!guest_info_param || !length)
		return -EINVAL;

	msg = FUNC1(GFP_KERNEL, "info-get %s", guest_info_param);
	if (!msg) {
		FUNC0("Cannot allocate memory to get guest info \"%s\".",
			  guest_info_param);
		return -ENOMEM;
	}

	if (FUNC7(&channel, RPCI_PROTOCOL_NUM))
		goto out_open;

	if (FUNC9(&channel, msg) ||
	    FUNC8(&channel, (void *) &reply, &reply_len))
		goto out_msg;

	FUNC6(&channel);
	if (buffer && reply && reply_len > 0) {
		/* Remove reply code, which are the first 2 characters of
		 * the reply
		 */
		reply_len = FUNC3(reply_len - 2, (size_t) 0);
		reply_len = FUNC5(reply_len, *length);

		if (reply_len > 0)
			FUNC4(buffer, reply + 2, reply_len);
	}

	*length = reply_len;

	FUNC2(reply);
	FUNC2(msg);

	return 0;

out_msg:
	FUNC6(&channel);
	FUNC2(reply);
out_open:
	*length = 0;
	FUNC2(msg);
	FUNC0("Failed to get guest info \"%s\".", guest_info_param);

	return -EINVAL;
}