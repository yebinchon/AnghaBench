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
typedef  int u8 ;
struct gb_svc {int /*<<< orphan*/  dev; int /*<<< orphan*/  state; } ;
struct gb_operation {int type; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GB_SVC_STATE_PROTOCOL_VERSION ; 
 int /*<<< orphan*/  GB_SVC_STATE_RESET ; 
 int /*<<< orphan*/  GB_SVC_STATE_SVC_HELLO ; 
#define  GB_SVC_TYPE_INTF_MAILBOX_EVENT 134 
#define  GB_SVC_TYPE_INTF_OOPS 133 
#define  GB_SVC_TYPE_INTF_RESET 132 
#define  GB_SVC_TYPE_MODULE_INSERTED 131 
#define  GB_SVC_TYPE_MODULE_REMOVED 130 
#define  GB_SVC_TYPE_PROTOCOL_VERSION 129 
#define  GB_SVC_TYPE_SVC_HELLO 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct gb_svc* FUNC1 (struct gb_connection*) ; 
 int FUNC2 (struct gb_operation*) ; 
 int FUNC3 (struct gb_operation*) ; 
 int FUNC4 (struct gb_operation*) ; 
 int FUNC5 (struct gb_operation*) ; 
 int FUNC6 (struct gb_operation*) ; 
 int FUNC7 (struct gb_operation*) ; 
 int FUNC8 (struct gb_operation*) ; 

__attribute__((used)) static int FUNC9(struct gb_operation *op)
{
	struct gb_connection *connection = op->connection;
	struct gb_svc *svc = FUNC1(connection);
	u8 type = op->type;
	int ret = 0;

	/*
	 * SVC requests need to follow a specific order (at least initially) and
	 * below code takes care of enforcing that. The expected order is:
	 * - PROTOCOL_VERSION
	 * - SVC_HELLO
	 * - Any other request, but the earlier two.
	 *
	 * Incoming requests are guaranteed to be serialized and so we don't
	 * need to protect 'state' for any races.
	 */
	switch (type) {
	case GB_SVC_TYPE_PROTOCOL_VERSION:
		if (svc->state != GB_SVC_STATE_RESET)
			ret = -EINVAL;
		break;
	case GB_SVC_TYPE_SVC_HELLO:
		if (svc->state != GB_SVC_STATE_PROTOCOL_VERSION)
			ret = -EINVAL;
		break;
	default:
		if (svc->state != GB_SVC_STATE_SVC_HELLO)
			ret = -EINVAL;
		break;
	}

	if (ret) {
		FUNC0(&svc->dev, "unexpected request 0x%02x received (state %u)\n",
			 type, svc->state);
		return ret;
	}

	switch (type) {
	case GB_SVC_TYPE_PROTOCOL_VERSION:
		ret = FUNC8(op);
		if (!ret)
			svc->state = GB_SVC_STATE_PROTOCOL_VERSION;
		return ret;
	case GB_SVC_TYPE_SVC_HELLO:
		ret = FUNC2(op);
		if (!ret)
			svc->state = GB_SVC_STATE_SVC_HELLO;
		return ret;
	case GB_SVC_TYPE_INTF_RESET:
		return FUNC5(op);
	case GB_SVC_TYPE_MODULE_INSERTED:
		return FUNC6(op);
	case GB_SVC_TYPE_MODULE_REMOVED:
		return FUNC7(op);
	case GB_SVC_TYPE_INTF_MAILBOX_EVENT:
		return FUNC3(op);
	case GB_SVC_TYPE_INTF_OOPS:
		return FUNC4(op);
	default:
		FUNC0(&svc->dev, "unsupported request 0x%02x\n", type);
		return -EINVAL;
	}
}