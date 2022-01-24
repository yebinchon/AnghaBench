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
struct TYPE_2__ {struct scmi_msg_resp_clock_protocol_attributes* buf; } ;
struct scmi_xfer {TYPE_1__ rx; } ;
struct scmi_msg_resp_clock_protocol_attributes {int /*<<< orphan*/  max_async_req; int /*<<< orphan*/  num_clocks; } ;
struct scmi_handle {int dummy; } ;
struct clock_info {int /*<<< orphan*/  max_async_req; int /*<<< orphan*/  num_clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_ATTRIBUTES ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC2 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC3 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int FUNC4(const struct scmi_handle *handle,
					      struct clock_info *ci)
{
	int ret;
	struct scmi_xfer *t;
	struct scmi_msg_resp_clock_protocol_attributes *attr;

	ret = FUNC2(handle, PROTOCOL_ATTRIBUTES,
				 SCMI_PROTOCOL_CLOCK, 0, sizeof(*attr), &t);
	if (ret)
		return ret;

	attr = t->rx.buf;

	ret = FUNC1(handle, t);
	if (!ret) {
		ci->num_clocks = FUNC0(attr->num_clocks);
		ci->max_async_req = attr->max_async_req;
	}

	FUNC3(handle, t);
	return ret;
}