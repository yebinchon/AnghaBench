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
typedef  int /*<<< orphan*/  u32 ;
struct ec_params_mkbp_info {int /*<<< orphan*/  event_type; int /*<<< orphan*/  info_type; } ;
struct cros_ec_device {int /*<<< orphan*/  dev; } ;
struct cros_ec_command {int version; int outsize; int insize; scalar_t__ data; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  EC_CMD_MKBP_INFO ; 
 int /*<<< orphan*/  EC_MKBP_EVENT_SWITCH ; 
 int /*<<< orphan*/  EC_MKBP_INFO_CURRENT ; 
 int /*<<< orphan*/  EC_MKBP_INFO_SUPPORTED ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct cros_ec_device*,struct cros_ec_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cros_ec_command*) ; 
 struct cros_ec_command* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct cros_ec_device *ec_dev, bool get_state,
				  bool *state)
{
	struct ec_params_mkbp_info *params;
	struct cros_ec_command *msg;
	int ret;

	msg = FUNC4(sizeof(*msg) + FUNC5(sizeof(u32), sizeof(*params)),
		      GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	msg->command = EC_CMD_MKBP_INFO;
	msg->version = 1;
	msg->outsize = sizeof(*params);
	msg->insize = sizeof(u32);
	params = (struct ec_params_mkbp_info *)msg->data;
	params->info_type = get_state ?
		EC_MKBP_INFO_CURRENT : EC_MKBP_INFO_SUPPORTED;
	params->event_type = EC_MKBP_EVENT_SWITCH;

	ret = FUNC1(ec_dev, msg);
	if (ret >= 0) {
		if (ret != sizeof(u32)) {
			FUNC2(ec_dev->dev, "wrong result size: %d != %zu\n",
				 ret, sizeof(u32));
			ret = -EPROTO;
		} else {
			*state = FUNC0(msg->data);
			ret = 0;
		}
	}

	FUNC3(msg);

	return ret;
}